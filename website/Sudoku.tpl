<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/Sudoku.css">
    <title>Sudoku</title>
</head>
<body>
<div class="head_bar">
    <div class="head_content">
        <a href="/" class="link"><h1 class="title">Sudoku</h1></a>
        </div>
    </div>
</div>
% check = ""
% for x in grid:
    % check += str(x)
    % if "0" in check:
        % bcolor = "red"
        % info = 1
        % break
    % else:
        % bcolor = "black"
        % info = 0
    % end
% end
<form action="solve" method="post" class="board" id="post_board">
<div class="Sudoku" style="border-color:{{bcolor}}">
    <div class="A9x9" style="border-color:{{bcolor}}">
        <div class="A3x9" style="border-color:{{bcolor}}">
            <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3" >
                        <input type="text" class="A1x1" name="f0" value="{{grid[0][0]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f9" value="{{grid[1][0]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f18" value="{{grid[2][0]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f1" value="{{grid[0][1]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f10" value="{{grid[1][1]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f19" value="{{grid[2][1]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f2" value="{{grid[0][2]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f11" value="{{grid[1][2]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f20" value="{{grid[2][2]}}" maxlength="1">
                </div>
            </div>
            <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f27" value="{{grid[3][0]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f36" value="{{grid[4][0]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f45" value="{{grid[5][0]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f28" value="{{grid[3][1]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f37" value="{{grid[4][1]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f46" value="{{grid[5][1]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f29" value="{{grid[3][2]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f38" value="{{grid[4][2]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f47" value="{{grid[5][2]}}" maxlength="1">
                </div>
            </div>
             <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f54" value="{{grid[6][0]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f63" value="{{grid[7][0]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f72" value="{{grid[8][0]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f55" value="{{grid[6][1]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f64" value="{{grid[7][1]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f73" value="{{grid[8][1]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f56" value="{{grid[6][2]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f65" value="{{grid[7][2]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f74" value="{{grid[8][2]}}" maxlength="1">
                </div>
            </div>
        </div>
        <div class="A3x9" style="border-color:{{bcolor}}">
            <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f3" value="{{grid[0][3]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f12" value="{{grid[1][3]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f21" value="{{grid[2][3]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f4" value="{{grid[0][4]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f13" value="{{grid[1][4]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f22" value="{{grid[2][4]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f5" value="{{grid[0][5]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f14" value="{{grid[1][5]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f23" value="{{grid[2][5]}}" maxlength="1">
                </div>
            </div>
            <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f30" value="{{grid[3][3]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f39" value="{{grid[4][3]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f48" value="{{grid[5][3]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f31" value="{{grid[3][4]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f40" value="{{grid[4][4]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f49" value="{{grid[5][4]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f32" value="{{grid[3][5]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f41" value="{{grid[4][5]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f50" value="{{grid[5][5]}}" maxlength="1">
                </div>
            </div>
             <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f57" value="{{grid[6][3]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f66" value="{{grid[7][3]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f75" value="{{grid[8][3]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f58" value="{{grid[6][4]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f67" value="{{grid[7][4]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f76" value="{{grid[8][4]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f59" value="{{grid[6][5]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f68" value="{{grid[7][5]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f77" value="{{grid[8][5]}}" maxlength="1">
                </div>
            </div>
        </div>
        <div class="A3x9" style="border-color:{{bcolor}}">
            <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f6" value="{{grid[0][6]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f15" value="{{grid[1][6]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f24" value="{{grid[2][6]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f7" value="{{grid[0][7]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f16" value="{{grid[1][7]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f25" value="{{grid[2][7]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f8" value="{{grid[0][8]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f17" value="{{grid[1][8]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f26" value="{{grid[2][8]}}" maxlength="1">
                </div>
            </div>
            <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f33" value="{{grid[3][6]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f42" value="{{grid[4][6]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f51" value="{{grid[5][6]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f34" value="{{grid[3][7]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f43" value="{{grid[4][7]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f52" value="{{grid[5][7]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f35" value="{{grid[3][8]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f44" value="{{grid[4][8]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f53" value="{{grid[5][8]}}" maxlength="1">
                </div>
            </div>
             <div class="A3x3" style="border-color:{{bcolor}}">
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f60" value="{{grid[6][6]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f69" value="{{grid[7][6]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f78" value="{{grid[8][6]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f61" value="{{grid[6][7]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f70" value="{{grid[7][7]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f79" value="{{grid[8][7]}}" maxlength="1">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" name="f62" value="{{grid[6][8]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f71" value="{{grid[7][8]}}" maxlength="1">
                        <input type="text" class="A1x1" name="f80" value="{{grid[8][8]}}" maxlength="1">
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<div class="button_box">
    <table>
        <tr>
            <th>Solve: </th>
            <td><button type="submit" form="post_board">Show</button></td>
        </tr>
        <tr>
            <th>Reset: </th>
            <td><button type="submit" form="reset">Reset</button></td>
        </tr>
        <tr>
            <th>Example: </th>
            <td><button type="submit" form="load_default">Load</button></td>
        </tr>
    </table>
<form action="/" method="get" class="board" id="reset"></form>
<form action="l_default" method="get" class="board" id="load_default"></form>
</div>
% if info:
    <div class="error_box">
        <p style="color:red">Sudoku is not solvable</p>
    </div>
% end
</body>
</html>