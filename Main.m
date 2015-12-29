function Main

%Read Data from file
Data = readData();
%Neuron matrix 3x3, weights 4;
N = rand(3,3,4);
representDataInSpace(Data,N);

IterationsForOrdering = 8000;
MaximumConvergence = 50000*size(N,1)* size(N,2);

S0=sqrt(size(N,1)* size(N,2));
T1 = IterationsForOrdering/log(S0);


alpha0 = 0.1;
alpha_limit =0.01;
S_limit =1;

T2 = IterationsForOrdering/log(alpha0/alpha_limit);

disp('Start of Ordering Phase.');
disp(char(10));

%Ordering fase
for n=0:(IterationsForOrdering-1)
    % Update the size of neighborhood.
    S = S0*exp(-1 * ( n / T1 ) );
    % Update the learning-rate.
    alpha = alpha0*exp(-1 * ( n / T2 ) );
    
    [~,x,y,Error] = getBMU(N,Data(mod(n,150)+1,:));
    [N] = updateWeights(x,y,N,Error,S,alpha);
    
    if alpha < alpha_limit
       alpha = alpha_limit;
    end
    if S < S_limit
       S = S_limit;
    end
end
representDataInSpace(Data,N);

disp('End of Ordering Phase.');
disp(char(10));
disp('Start of Convergence Phase.');
disp(char(10));


end
