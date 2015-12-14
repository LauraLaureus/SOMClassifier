function Main(episodes)

%Read Data from file
Data = readData();

%Neuron matrix 10x16, weights 4;
N = rand(10,16,4);

for e=1:episodes
    for i=1:size(Data,1)
        [BMU,x,y] = getBMU(N,Data(i));
        N = updateWeights(BMU,x,y,N);
    end
end

%Abr�a que plasmar las salidas en un plot.
end