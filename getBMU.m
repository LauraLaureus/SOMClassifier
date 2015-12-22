function [BMU,x,y,Error] = getBMU(Neurons,example)

BMU = [];
x = 0;
y = 0;
error_for_BMU = Inf;
Error = zeros(size(Neurons,1),size(Neurons,2),size(Neurons,3));

for i=1:size(Neurons,1)
    for j=1:size(Neurons,2)
        aux(1,:) =  Neurons(i,j,:);
        error = computeError(aux,example);
        if norm(error) < error_for_BMU
            error_for_BMU = norm(error);
            x=i;
            y=j;
            BMU = Neurons(i,j,:);
        end
        Error(i,j,:)= error;
    end
end

end