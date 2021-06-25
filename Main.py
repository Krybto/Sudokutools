from bottle import route, run, template, request, static_file
from LK3 import *


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


@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='website/static/')


def solve(form):
    grid = init_empty_grid()
    print(grid)
    try:
        counter = 0
        for row_index in range(9):
            for column_index in range(9):
                if form.get(f"f{str(counter)}") == "":
                    grid[row_index][column_index] = 0
                else:
                    print(form.get(f"f{str(counter)}"))
                    grid[row_index][column_index] = int(form.get(f"f{str(counter)}"))
                counter += 1
        print(grid)
        return main(grid)
    except TypeError:
        return init_empty_grid()
    except ValueError:
        return init_empty_grid()


run(debug=True, reloader=True)
