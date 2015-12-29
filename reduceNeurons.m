function [N] = reduceNeurons(Data,Neurons)

lattice = zeros(size(Neurons,1),size(Neurons,2));

for i=1:150
    [~,x,y] = getBMU(Neurons,Data(i,:));
    lattice(x,y) = lattice(x,y) +1;
end

count = sum(lattice(:)>25);
N = zeros(count,1,4);
index = 1;
for i=1:size(Neurons,1)
    for j=1:size(Neurons,2)
        if lattice(i) > 20
            N(index,1,:) = Neurons(i,j,:);
            index = index +1;
        end
    end
end

end