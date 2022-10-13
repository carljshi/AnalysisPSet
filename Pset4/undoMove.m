function [sudokuMyAnswer,sudokuhistory] = undoMove(sudokuMyAnswer, sudokuhistory)
sudokuMyAnswer(sudokuhistory(end,1), sudokuhistory(end,2)) = sudokuhistory(end,3);
sudokuhistory = sudokuhistory(1:(end-1),:);
displayBoard(sudokuMyAnswer)
end