a = 0;
b = 1;
x1 = (b-a).*rand(100000,1) + a;
x2 = (b-a).*rand(100000,1) + a;
y1 = (b-a).*rand(100000,1) + a;
y2 = (b-a).*rand(100000,1) + a;
X = sqrt((x1-x2).^2+(y1-y2).^2);

PA = 0;
u = zeros(100000,1);
for i = 1:1:100000
    
    if X(i) >.5
        PA = PA + 1;
        
    end
    u(i) = PA;
end
PA = PA/100000
plot(1:100000,u)
%histogram(X);

%% Part 2

a = 0;
b = 1;
x1 = (b-a).*rand(100000,1) + a;
x2 = (b-a).*rand(100000,1) + a;
x3 = (b-a).*rand(100000,1) + a;
y1 = (b-a).*rand(100000,1) + a;
y2 = (b-a).*rand(100000,1) + a;
y3 = (b-a).*rand(100000,1) + a;
z1 = (b-a).*rand(100000,1) + a;
z2 = (b-a).*rand(100000,1) + a;
z3 = (b-a).*rand(100000,1) + a;
s1 = sqrt((x1-x2).^2+(y1-y2).^2+(z1-z2).^2);
s2 = sqrt((x1-x3).^2+(y1-y3).^2+(z1-z3).^2);
s2 = sqrt((x2-x3).^2+(y2-y3).^2+(z2-z3).^2);
X = sqrt(s1.^2+s2.^2+s3.^2);

PA = 0;
u = zeros(100000,1);
for i = 1:1:100000
    
    if X(i) >.5
        PA = PA + 1;
        
    end
    u(i) = PA;
end
PA = PA/100000
plot(1:100000,u)
histogram(X);

%% Part 3

a = 0;
b = 1;
d = 1;
Vs = 0;
for i = 1:1000000
    
    x1 = (b-a).*rand(d,1) + a;
    y = sum(x1);
    if y <= 1
        Vs = Vs+1;
    end
end
Vs = Vs/1000000
