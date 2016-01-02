function representDataInSpace(Data,SuperposedData)

figure;
X = Data(:,2);
Y = Data(:,3);
Z = Data(:,4);

cameratoolbar;
plot3(X,Y,Z,'o');
hold on 
title('Data in space 3');
grid on;

X2 = reshape(SuperposedData(:,:,2),[],1);
Y2 = reshape(SuperposedData(:,:,3),[],1);
Z2 = reshape(SuperposedData(:,:,4),[],1);

plot3(X2,Y2,Z2,'dr');
hold off;
end