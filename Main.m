function Main(episodes)

%Read Data from file
Data = readData();

%Neuron matrix 10x16, weights 4;
N = rand(10,16,4);

for e=1:episodes
    for i=1:size(Data,1)
        [BMU,x,y,Error] = getBMU(N,Data(i));
        N = updateWeights(BMU,x,y,N,Error,i*e,0.1);
    end
end

%Abría que plasmar las salidas en un plot.
end
