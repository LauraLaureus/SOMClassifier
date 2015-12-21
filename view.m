function view(Data,N)

figure;
hold on;
for example=1:50
    [~,x,y]= getBMU(N,Data(example));
    plot(x,y,'or');
end

axis([0 10 0 16]);
end