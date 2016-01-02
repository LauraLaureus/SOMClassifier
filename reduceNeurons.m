function [N] = reduceNeurons(Data,Neurons)

N = zeros(3,1,4);

lattice = zeros(size(Neurons,1),size(Neurons,2));

for i=1:50
    [~,x,y] = getBMU(Neurons,Data(i,:));
    lattice(x,y) = lattice(x,y) +1;
end

[M, index] = max(lattice);
[~, index2] = max(M);
N(1,1,:) = Neurons(index(index2),index2,:);

lattice = zeros(size(Neurons,1),size(Neurons,2));
for i=51:100
    [~,x,y] = getBMU(Neurons,Data(i,:));
    lattice(x,y) = lattice(x,y) +1;
end

[M, index] = max(lattice);
[~, index2] = max(M);
N(2,1,:) = Neurons(index(index2),index2,:);

lattice = zeros(size(Neurons,1),size(Neurons,2));
for i=101:150
    [~,x,y] = getBMU(Neurons,Data(i,:));
    lattice(x,y) = lattice(x,y) +1;
end
[M, index] = max(lattice);
[~, index2] = max(M);
N(3,1,:) = Neurons(index(index2),index2,:);

end