function view(Data,N)

figure;
hold on;
for example=1:50 %red
    [~,x,y]= getBMU(N,Data(example,:));
    plot(x,y,'or');
end

for example=51:100 %blue
    [~,x,y]= getBMU(N,Data(example));
    plot(x,y,'ob');
end

for example=101:150 %green
    [~,x,y]= getBMU(N,Data(example));
    plot(x,y,'og');
end

axis([0 16 0 10]);
hold off
end