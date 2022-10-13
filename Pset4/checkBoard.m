function [error, location] = checkBoard(sudokuMyAnswer,x,y)
location = [];
[valid1, rowerrorloc] = checkRow(sudokuMyAnswer, x, y);
[valid2, columnerrorloc] = checkColumn(sudokuMyAnswer, x, y);
[valid3, blockerrorloc] = checkBlock(sudokuMyAnswer, x, y);

error = valid1 && valid2 && valid3;
location = [rowerrorloc;columnerrorloc;blockerrorloc;x y];
end