function [Neurons,sigma] = updateWeights(BMU,x,y,Neurons,Error,sigma,iteration,alpha)
   
    tau = 1000/log(sigma);
    sigma = sigma*exp(-iteration/tau);
    
    for i=1:size(Neurons,1)
        for j=1:size(Neurons,2)
            neighbourhood_value = computeNeighbourhood(x,y,i,j,sigma);
            for k=1:size(Neurons,3)
                Neurons(i,j,k) = Neurons(i,j,k) + neighbourhood_value*alpha*Error(i,j,k);
            end
        end
    end
end