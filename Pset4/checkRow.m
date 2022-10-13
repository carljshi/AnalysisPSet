function [error, location] = checkRow(sudokuMyAnswer,x,y)
    location = [];
    error = true;
    %here need to account for if all numbers are 0, otherwise it breaks
    %checking process
    if numel(find(sudokuMyAnswer(x,:)==sudokuMyAnswer(x,y)))>1 && numel(unique(sudokuMyAnswer(x,:))) < 9 
        error = false;
        disp(['Row' num2str(x) ' has error'])
    end

    if error == false %&& ~ismember(0,sudokuMyAnswer(x,:))
        dup = find(sudokuMyAnswer(x,:) == sudokuMyAnswer(x,y));
        dup = dup(dup ~= y);
        for i = 1:numel(dup)
            location = [location; x, dup(i)];
        end
        disp(['In Row ' num2str(x) ' Column(s) ' num2str(dup) ' contain duplicates'])
    end
end

