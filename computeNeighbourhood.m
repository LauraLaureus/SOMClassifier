function value = computeNeighbourhood(x,y,i,j,sigma)

    sqrDistance = (i-x)^2+ (j-y)^2;
    distance = sqrt(sqrDistance);
    value = gaussmf(distance,[sigma 0]);
end