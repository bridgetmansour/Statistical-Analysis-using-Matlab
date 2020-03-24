n = 8;
N = 1000000;
Zn = zeros(1,N);
for i = 1:N
    X = rand(1,n);
    Sn = sum(X);
    Zn(i) = (Sn-(n*(0.5)))/(sqrt(n*(1/12)));
end
hold all;

SPLIT=50;
intervals = (-3*SPLIT:3*SPLIT)/SPLIT;

counts = histcounts(Zn,intervals);
normalized_counts = counts/N;
probabilities = normalized_counts / (1/SPLIT);
plot(intervals(1:end-1), probabilities)

y = (exp((-intervals.^2)./2))./(2*pi);

plot(intervals,y);


p = normcdf(intervals);

plot(intervals,p);
legend('Numerical using Zn','f(x)','F(x)');

hold off;
