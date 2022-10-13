function [error,location] = checkColumn(sudokuMyAnswer,x,y)
    location = [];
    error = true;
    if numel(find(sudokuMyAnswer(:,y)==sudokuMyAnswer(x,y)))>1
        error = false;
        disp(['Column' num2str(y) ' has error'])
    end

    if error == false
        dup = find(sudokuMyAnswer(:,y) == sudokuMyAnswer(x,y));
        dup = dup(dup ~= x);
        for i = 1:numel(dup)
            location = [location; dup(i),y];
        end
        disp(['In Row(s) ' num2str(dup') ' Column ' num2str(y) ' contain duplicates'])
    end
end