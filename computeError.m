function [error] = computeError(Nw,example)
    error = sum((Nw-example).^2);
end