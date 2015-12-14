function [Neurons] = updateWeights(BMU,x,y,Neurons,Error,iteration,alpha)
    for i=1:size(Neurons,1)
        for j=1:size(Neurons,2)
            neighbourhood_value = computeNeighbourhood(x,y,i,j,iteration);
            for k=1:size(Neurons,3)
                Neurons(i,j,k) = Neurons(i,j,k) + neighbourhood_value*alpha*Error;
            end
        end
    end
end