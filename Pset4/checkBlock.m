function [error, location] = checkBlock(sudokuMyAnswer,x,y)
    location = [];
    error = true;
    %get block locations
    blockx = ceil(x/3);
    blocky = ceil(y/3);
    blockitself = sudokuMyAnswer(((blockx-1)*3+1):(blockx*3),((blocky-1)*3+1):(blocky*3));
    if numel(find(blockitself==sudokuMyAnswer(x,y)))>1
        error = false;
    end
    if error == false
        dup = find(blockitself == sudokuMyAnswer(x,y));
        dup = dup(dup ~= sub2ind([3 3],(x-(blockx-1)*3),(y-(blocky-1)*3)));
        for i = 1:numel(dup)
            [r,w] = ind2sub([3 3],dup(i));
            location = [location; ((blockx-1)*3)+r,((blocky-1)*3)+w];
        end    
        for k = 1:size(location,1)
            disp(['In Row ' num2str(location(k,1)) ' Column ' num2str(location(k,2)) ' contain duplicates'])
        end
    end
end



