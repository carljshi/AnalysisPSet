function displayErrorBoard(sudokuMyAnswer,errorlocation)
for kk = 1:3
    disp('_________________________')
    for ii = 1:3
        dispOutput = ['|'];  
        for ll = 1:3
            for jj = 1:3
                if ismember([3*(kk-1)+ii,3*(ll-1)+jj],errorlocation,'row')
                    dispOutput = [dispOutput ' ' num2str(sudokuMyAnswer(3*(kk-1)+ii,3*(ll-1)+jj)) '*'];
                elseif sudokuMyAnswer(3*(kk-1)+ii,3*(ll-1)+jj) ~= 0
                    dispOutput = [dispOutput ' ' num2str(sudokuMyAnswer(3*(kk-1)+ii,3*(ll-1)+jj))];
                else
                    dispOutput = [dispOutput ' ' '_'];
                end
            end
            dispOutput = [dispOutput ' |'];
        end        
        disp(dispOutput);
    end
end
disp('_________________________')
end