function Main(episodes)

%Read Data from file
Data = readData();

%Neuron matrix 3x3, weights 4;
N = rand(3,3,4);
%sigma = 2.5;

for e=1:episodes
    sigma = 3;
    for i=1:size(Data,1)
        [BMU,x,y,Error] = getBMU(N,Data(i,:));
        [N,sigma] = updateWeights(BMU,x,y,N,Error,sigma,i*e,0.1);
    end
   
end

%Abría que plasmar las salidas en un plot.
view(Data,N);
end
