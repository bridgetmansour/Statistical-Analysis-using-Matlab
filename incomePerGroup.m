hist(age); 
hist(capital_gain);
hist(hours_per_week);

for i = 1:height(adult)
    if adult.income(i) == ">50K" 
        incomeB.incomeB(i) = 1;
    else
        incomeB.incomeB(i) = 0;
    end
end

A = incomeB.incomeB;
B = adult.age;
C = adult.capital_gain;
D = adult.hours_per_week;
R = corr2(A,B);
R2 = corr2(A,C);
R3 = corr2(A,D);

for i = 1:height(adult)
    if adult.workclass(i) == "Private" 
        workclassB.workclassB(i) = 0;
    elseif adult.workclass(i) == "Federal-gov"
        workclassB.workclassB(i) = 1;
    elseif adult.workclass(i) == "Without-pay"
        workclassB.workclassB(i) = 2;
    else 
        workclassB.workclassB(i) = 3;
    end
end

E = workclassB.workclassB;
R4 = corr2(A,E);

for i = 1:height(adult)
    if adult.education(i) == "Bachelors" 
        educationB.educationB(i) = 0;
    elseif adult.education(i) == "HS-grad"
        educationB.educationB(i) = 1;
    elseif adult.education(i) == "Masters"
        educationB.educationB(i) = 2;
    else 
        educationB.educationB(i) = 3;
    end
end

F = educationB.educationB;
R5 = corr2(A,F);

for i = 1:height(adult)
    if adult.marital_status(i) == "Married-civ-spouse" 
        marital_statusB.marital_statusB(i) = 0;
    elseif adult.marital_status(i) == "Divorced"
        marital_statusB.marital_statusB(i) = 1;
    elseif adult.marital_status(i) == "Never-married"
        marital_statusB.marital_statusB(i) = 2;
    else 
        marital_statusB.marital_statusB(i) = 3;
    end
end

G = marital_statusB.marital_statusB;
R6 = corr2(A,G);

for i = 1:height(adult)
    if adult.relationship(i) == "Wife" 
        relationshipB.relationshipB(i) = 0;
    elseif adult.relationship(i) == "Own-child"
        relationshipB.relationshipB(i) = 1;
    elseif adult.relationship(i) == "Husband"
        relationshipB.relationshipB(i) = 2;
    else 
        relationshipB.relationshipB(i) = 3;
    end
end

F = relationshipB.relationshipB;
R7 = corr2(A,F);
