stud_resp = [ 0 1 2 3 3 4 5 5 6 6 6 6 7 7 7 7 7 7 7 8 8 8 8 8 9 9 9 10 10 10]
figure; hist( stud_resp)
figure; hist( stud_resp, 5) 
mean(stud_resp)
median(stud_resp)
var(stud_resp)
std(stud_resp)
x = (stud_resp);
close all;
%std_by_hand = sqrt(sum( (x-mean(x)).^2)/ (length((stud_resp))-1))
figure; 
plot (stud_resp, '*')

%these two are the same
zs = zscore(stud_resp)
std_by_hand = (stud_resp - mean(stud_resp)) /std(stud_resp)

figure; plot (zs, '*r')

figure; hist (stud_resp, 5)

%these two are the same
figure; hist (zs,6)
figure; hist (std_by_hand,6)

close all;
r=randn(10000,1);
figure; plot(r,'.')
figure; (hist(r,50))

%bimodal
close all;
r2 = [randn(1000,1); randn(1000,1) + 3]
figure; plot(r2,'.')
figure; (hist(r2,100))

 %triange
close all;
r3 = abs (randn(2000,1));
figure; plot (r3, '.')
figure; hist(r3, 100)

close all;

%uniform
%shift 1
r4 = rand(2000,1) +1; 
figure; plot(r4, '.')
figure; hist (r4,100)
figure; hist (r4,10)
close all;


%central tendacncy theory
x_sum = []
%to get gaussian distribution
%sum of points from first, second, and third distribution types
for i=1:1000
    
    %both do the same thing
    %x_sum(i) = r2(i) +r3(i) +r4(i);
    %pick one point from the points (sum of points from each distribution
    %type makes a gaussian distribution
    x_sum(i) = r2(randi(2000)) +r3(randi(2000)) +r4(randi(2000));
end

figure; plot(x_sum, '.')
figure; hist(x_sum)


%*distribution of mean* tends to have a normal distribution
%why? -> 

num_stud = 1000;
stud = randi(10, num_stud, 1);
figure; plot (stud, '.');
%histrogram to see if there is an even distribtion
figure; hist(stud,20)

close all;
%% t-test
for i=1:1000
    %avg_gr(i) = mean([stud(randi(num_stud)) ,stud(randi(num_stud)) ,stud(randi(num_stud))]);
    avg_gr (i) = mean (stud (randi (num_stud, 10, 1)));
end

%looks like normal distribution
figure; plot (avg_gr, '*')
figure; hist (avg_gr, 10)

%t-test ->select subset of original and calculate the mean, how much does
%it match with the mean of the full sample size ->how likey a random sample
%size will get the desired output of normal distribution

players = [ 4 6 7 9 10 5 8 8 10 4];
avg_ply = mean (players)

%find out how many of the indices 
f= find(avg_gr <avg_ply);
length(f)
%needs to pass the threshold set out by ttest
perc = length (f) / num_stud *100

%%
%this function does the above
% h= 1 means the two values are different
% p value is (100 - perc)/100
[h p] = ttest2(stud, players)

%%
%effect size : difference of two means and divide by std deviation and
%compare it the the width of the dsitribution
% small =0.2 , med = 0.5, large =.8

effect_size = (mean(players) - mean (stud)) /std(stud) 

%%
%Correlation:  negative value means correlation is opposite direction
%a->b, b->a, z-> a & z->b
%correlation has three directions for causaulity : a-> b does not mean b->a

sig1 = cos(0:0.1:100);
figure; plot (sig1)

sig2 = cos(0:0.1:100) + rand (size (sig1));
figure; plot (sig2)
corrcoef(sig1, sig2)

%% correlation in opposite direction
sig1 = -cos(0:0.1:100);
figure; plot (sig1)

sig2 = cos(0:0.1:100) + rand (size (sig1));
figure; plot (sig2)
corrcoef(sig1, sig2)

%% almost zero correlation
sig1 = -cos(0:0.1:100);
sig2 = rand(size(sig1))*1

figure; plot (sig2)
corrcoef(sig1, sig2)

%%multilevel modeling......