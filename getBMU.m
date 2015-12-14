function [BMU,x,y] = getBMU(Neurons,example)

BMU = [];
x = 0;
y = 0;
error_for_BMU = Inf;

for i=1:size(Neurons,1)
    for j=1:size(Neurons,2)
        error = computeError(Neurons(i,j,:),example);
        if error < error_for_BMU
            error_for_BMU = error;
            x=i;
            y=j;
            BMU = Neurons(i,j,:);
        end
    end
end

end