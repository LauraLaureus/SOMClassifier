function representDataInSpace(Data,SuperposedData)

X = Data(:,1);
Y = Data(:,2);
Z = Data(:,3);

figure;
plot3(X,Y,Z,'o');
hold on 
title('Data in space');
grid on;

X2 = reshape(SuperposedData(:,:,1),[],1);
Y2 = reshape(SuperposedData(:,:,2),[],1);
Z2 = reshape(SuperposedData(:,:,3),[],1);

plot3(X2,Y2,Z2,'xr');
hold off;
end