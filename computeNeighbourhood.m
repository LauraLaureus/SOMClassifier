function value = computeNeighbourhood(x,y,i,j,iteration)

    sqrDistance = (i-x)^2+ (j-y)^2;
    distance = sqrt(sqrDistance);
    value = gaussmf(distance,[ 0]);
end