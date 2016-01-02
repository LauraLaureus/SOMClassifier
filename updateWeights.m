function [Neurons] = updateWeights(x,y,Neurons,Error,sigma,alpha)
  
    for i=1:size(Neurons,1)
        for j=1:size(Neurons,2)
            neighbourhood_value = computeNeighbourhood(x,y,i,j,sigma);
            for k=1:size(Neurons,3)
                Neurons(i,j,k) = Neurons(i,j,k) + alpha*neighbourhood_value.*Error(i,j,k);               
            end
        end
    end

end