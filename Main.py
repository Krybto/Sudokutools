from bottle import route, run, template, request, static_file


@route('/')
def index():
    return template("website/Sudoku.tpl")


@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='static/')


run()