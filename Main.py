import copy

from bottle import route, run, template, request, static_file
from LK3 import *
import random as rd


@route('/')
def index():
    grid = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    return template("website/Sudoku.tpl", grid=grid)


@route("/solve")
def solving():
    return template("website/Sudoku.tpl", grid=[["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]])


@route('/solve', method="POST")
def solving():
    grid = solve(request.forms)
    return template("website/Sudoku.tpl", grid=grid)


@route('/l_default')
def load_default():
    grid = init_empty_grid()
    grid[0] = ["", "", 1, 2, "", 7, "", "", ""]
    grid[1] = ["", 6, 2, "", "", "", "", "", ""]
    grid[2] = ["", "", "", "", "", "", 9, 4, ""]
    grid[3] = ["", "", "", 9, 8, "", "", "", 3]
    grid[4] = [5, "", "", "", "", "", "", "", ""]
    grid[5] = [7, "", "", "", 3, "", "", 2, 1]
    grid[6] = ["", "", "", 1, "", 2, "", "", ""]
    grid[7] = ["", 7, "", 8, "", "", 4, 1, ""]
    grid[8] = [3, "", 4, "", "", "", "", 8, ""]
    return template("website/Sudoku.tpl", grid=grid)


@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='website/static/')


def solve(form):
    grid = init_empty_grid()
    try:
        counter = 0
        for row_index in range(9):
            for column_index in range(9):
                if form.get(f"f{str(counter)}") == "":
                    grid[row_index][column_index] = 0
                else:
                    grid[row_index][column_index] = int(form.get(f"f{str(counter)}"))
                counter += 1
        return main(grid)
    except TypeError:
        return init_empty_grid()
    except ValueError:
        return init_empty_grid()


run(debug=True, reloader=True)
