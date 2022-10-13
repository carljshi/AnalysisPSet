function [valid, location] = checkBoard(sudokuMyAnswer,x,y)
location = [];
[valid1, rowerrorloc] = checkRow(sudokuMyAnswer, x, y);
[valid2, columnerrorloc] = checkColumn(sudokuMyAnswer, x, y);
[valid3, blockerrorloc] = checkBlock(sudokuMyAnswer, x, y);

valid = valid1 && valid2 && valid3;
if ~valid
    location = [rowerrorloc;columnerrorloc;blockerrorloc;x y];
end
end