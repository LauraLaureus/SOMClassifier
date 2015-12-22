function [error] = computeError(Nw,example)
    %example2 = zeros(1,1,4);
    %example2(1,1,:) = example;
    error = Nw-example;
end