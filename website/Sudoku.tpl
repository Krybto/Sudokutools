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
<form action="solve" method="post" class="board" id="post_board">
<div class="Sudoku">
    <div class="A9x9">
        <div class="A3x9">
            <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f0" value="{{grid[0][0]}}">
                        <input type="text" class="A1x1" size="1px" name="f9" value="{{grid[1][0]}}">
                        <input type="text" class="A1x1" size="1px" name="f18" value="{{grid[2][0]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f1" value="{{grid[0][1]}}">
                        <input type="text" class="A1x1" size="1px" name="f10" value="{{grid[1][1]}}">
                        <input type="text" class="A1x1" size="1px" name="f19" value="{{grid[2][1]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f2" value="{{grid[0][2]}}">
                        <input type="text" class="A1x1" size="1px" name="f11" value="{{grid[1][2]}}">
                        <input type="text" class="A1x1" size="1px" name="f20" value="{{grid[2][2]}}">
                </div>
            </div>
            <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f27" value="{{grid[3][0]}}">
                        <input type="text" class="A1x1" size="1px" name="f36" value="{{grid[4][0]}}">
                        <input type="text" class="A1x1" size="1px" name="f45" value="{{grid[5][0]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f28" value="{{grid[3][1]}}">
                        <input type="text" class="A1x1" size="1px" name="f37" value="{{grid[4][1]}}">
                        <input type="text" class="A1x1" size="1px" name="f46" value="{{grid[5][1]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f29" value="{{grid[3][2]}}">
                        <input type="text" class="A1x1" size="1px" name="f38" value="{{grid[4][2]}}">
                        <input type="text" class="A1x1" size="1px" name="f47" value="{{grid[5][2]}}">
                </div>
            </div>
             <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f54" value="{{grid[6][0]}}">
                        <input type="text" class="A1x1" size="1px" name="f63" value="{{grid[7][0]}}">
                        <input type="text" class="A1x1" size="1px" name="f72" value="{{grid[8][0]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f55" value="{{grid[6][1]}}">
                        <input type="text" class="A1x1" size="1px" name="f64" value="{{grid[7][1]}}">
                        <input type="text" class="A1x1" size="1px" name="f73" value="{{grid[8][1]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f56" value="{{grid[6][2]}}">
                        <input type="text" class="A1x1" size="1px" name="f65" value="{{grid[7][2]}}">
                        <input type="text" class="A1x1" size="1px" name="f74" value="{{grid[8][2]}}">
                </div>
            </div>
        </div>
        <div class="A3x9">
            <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f3" value="{{grid[0][3]}}">
                        <input type="text" class="A1x1" size="1px" name="f12" value="{{grid[1][3]}}">
                        <input type="text" class="A1x1" size="1px" name="f21" value="{{grid[2][3]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f4" value="{{grid[0][4]}}">
                        <input type="text" class="A1x1" size="1px" name="f13" value="{{grid[1][4]}}">
                        <input type="text" class="A1x1" size="1px" name="f22" value="{{grid[2][4]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f5" value="{{grid[0][5]}}">
                        <input type="text" class="A1x1" size="1px" name="f14" value="{{grid[1][5]}}">
                        <input type="text" class="A1x1" size="1px" name="f23" value="{{grid[2][5]}}">
                </div>
            </div>
            <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f30" value="{{grid[3][3]}}">
                        <input type="text" class="A1x1" size="1px" name="f39" value="{{grid[4][3]}}">
                        <input type="text" class="A1x1" size="1px" name="f48" value="{{grid[5][3]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f31" value="{{grid[3][4]}}">
                        <input type="text" class="A1x1" size="1px" name="f40" value="{{grid[4][4]}}">
                        <input type="text" class="A1x1" size="1px" name="f49" value="{{grid[5][4]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f32" value="{{grid[3][5]}}">
                        <input type="text" class="A1x1" size="1px" name="f41" value="{{grid[4][5]}}">
                        <input type="text" class="A1x1" size="1px" name="f50" value="{{grid[5][5]}}">
                </div>
            </div>
             <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f57" value="{{grid[6][3]}}">
                        <input type="text" class="A1x1" size="1px" name="f66" value="{{grid[7][3]}}">
                        <input type="text" class="A1x1" size="1px" name="f75" value="{{grid[8][3]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f58" value="{{grid[6][4]}}">
                        <input type="text" class="A1x1" size="1px" name="f67" value="{{grid[7][4]}}">
                        <input type="text" class="A1x1" size="1px" name="f76" value="{{grid[8][4]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f59" value="{{grid[6][5]}}">
                        <input type="text" class="A1x1" size="1px" name="f68" value="{{grid[7][5]}}">
                        <input type="text" class="A1x1" size="1px" name="f77" value="{{grid[8][5]}}">
                </div>
            </div>
        </div>
        <div class="A3x9">
            <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f6" value="{{grid[0][6]}}">
                        <input type="text" class="A1x1" size="1px" name="f15" value="{{grid[1][6]}}">
                        <input type="text" class="A1x1" size="1px" name="f24" value="{{grid[2][6]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f7" value="{{grid[0][7]}}">
                        <input type="text" class="A1x1" size="1px" name="f16" value="{{grid[1][7]}}">
                        <input type="text" class="A1x1" size="1px" name="f25" value="{{grid[2][7]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f8" value="{{grid[0][8]}}">
                        <input type="text" class="A1x1" size="1px" name="f17" value="{{grid[1][8]}}">
                        <input type="text" class="A1x1" size="1px" name="f26" value="{{grid[2][8]}}">
                </div>
            </div>
            <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f33" value="{{grid[3][6]}}">
                        <input type="text" class="A1x1" size="1px" name="f42" value="{{grid[4][6]}}">
                        <input type="text" class="A1x1" size="1px" name="f51" value="{{grid[5][6]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f34" value="{{grid[3][7]}}">
                        <input type="text" class="A1x1" size="1px" name="f43" value="{{grid[4][7]}}">
                        <input type="text" class="A1x1" size="1px" name="f52" value="{{grid[5][7]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f35" value="{{grid[3][8]}}">
                        <input type="text" class="A1x1" size="1px" name="f44" value="{{grid[4][8]}}">
                        <input type="text" class="A1x1" size="1px" name="f53" value="{{grid[5][8]}}">
                </div>
            </div>
             <div class="A3x3">
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f60" value="{{grid[6][6]}}">
                        <input type="text" class="A1x1" size="1px" name="f69" value="{{grid[7][6]}}">
                        <input type="text" class="A1x1" size="1px" name="f78" value="{{grid[8][6]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f61" value="{{grid[6][7]}}">
                        <input type="text" class="A1x1" size="1px" name="f70" value="{{grid[7][7]}}">
                        <input type="text" class="A1x1" size="1px" name="f79" value="{{grid[8][7]}}">
                </div>
                <div class="A1x3">
                        <input type="text" class="A1x1" size="1px" name="f62" value="{{grid[6][8]}}">
                        <input type="text" class="A1x1" size="1px" name="f71" value="{{grid[7][8]}}">
                        <input type="text" class="A1x1" size="1px" name="f80" value="{{grid[8][8]}}">
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<div class="button_box">
    <table>
        <tr>
            <th>Lösen: </th>
            <th>Reset: </th>
        </tr>
        <tr>
            <td><button type="submit" form="post_board">Solve</button></td>
            <td><button type="submit" form="reset">Reset</button></td>
        </tr>
    </table>
<form action="/" method="get" class="board" id="reset"></form>
</div>
% for x in grid:
    % if 0 in x:
        <p style="color:red">Sudoku is not solvable</p>
    % break
    % end
% end
</body>
</html>