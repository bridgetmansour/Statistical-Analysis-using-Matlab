%% #1
M = input('M: ');
p = input('p: ');
R = input('R: ');
Menc = [];

for j = 1:length(M)
    for k = 1:R
        Menc = [Menc, M(j)];
    end
end

Mrec = Menc;

for i = 1:length(Mrec)
    
    r = rand(1);
    if p > r %flip
        if Mrec(i) == 0 
            Mrec(i) = 1;
        else
            Mrec(i) = 0;
        end 
    end
end
    
Mfin = [];
temp = 0;
for h = 0:length(M)-1
	pos = h * R;
    pos = pos + 1;
    e = pos + R-1;
    for y = pos:e
        temp = temp + Mrec(y);
    end
    if temp/R >= 0.5
        temp = 1;
    else 
        temp = 0;
    end
    
	Mfin = [Mfin,temp];

end

%% #2

M = zeros(1,100);
p = input('p: ');
R = input('R: ');


Scounter = 0;

xx = R * length(M);
Menc = zeros(1,xx);
for b = 1:1000

for j = 1:length(M)
    for k = 1:R
        Menc(k*j) = M(j);
    end
end

Mrec = Menc;

for i = 1:length(Mrec)
    
    r = rand(1);
    if p > r %flip
        if Mrec(i) == 0 
            Mrec(i) = 1;
        else
            Mrec(i) = 0;
        end 
    end
end
    
Mfin = zeros(1,length(M));
temp = 0;
for h = 0:length(M)-1
	pos = h * R;
    pos = pos + 1;
    e = pos + R-1;
    for y = pos:e
        temp = temp + Mrec(y);
    end
    if temp/R >= 0.5
        temp = 1;
    else 
        temp = 0;
    end
    
	Mfin(h+1) = temp;

end

if Mfin == M
    Scounter = Scounter + 1;
end
end

prob = Scounter / 1000;
plot(prob);
