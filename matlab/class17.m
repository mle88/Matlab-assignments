
stud_resp = [ 0 1 2 3 3 4 5 5 6 6 6 6 ...
    7 7 7 7 7 7 7 8 8 8 8 8 9 9 9 10 10 10];

figure; hist( stud_resp )
figure; hist( stud_resp, 5 )

mean(stud_resp)
median(stud_resp)
var(stud_resp)
std(stud_resp)

 x = stud_resp;
  
std_by_hand = sqrt( sum( (x - mean( x )).^2) / (length(stud_resp)-1))

figure;plot( stud_resp, '*')
zs = zscore( stud_resp ); % z-score
zs_by_hand = (stud_resp - mean( stud_resp )) / std(stud_resp)

figure;plot( zs, '*r')

figure;hist( stud_resp, 5 )
figure;hist( zs,6 )
figure;hist( zs_by_hand,6 )


r = randn(10000,1);
figure;plot( r ,'.')
figure;hist( r, 100 ) %- normal distrubution

r2 = [randn(1000,1); randn(1000,1) + 3 ] ;%- bimodal distribution
figure;plot( r2 ,'.')
figure;hist( r2, 100 )

r3 = abs( randn(2000,1) );%- triangular distribution
figure;plot( r3 ,'.')
figure;hist( r3, 100 )

r4 = rand( 2000, 1)+1;% - uniform distribution
figure;plot( r4 ,'.')
figure;hist( r4, 10 )

x_sum=[];
for i =1:1000 
%    x_sum(i) =  r2(i) + r3(i) + r4(i);
    x_sum(i) =  r2(randi(2000)) + r3(randi(2000)) + r4(randi(2000));
end
figure;plot( x_sum ,'.')
figure;hist( x_sum )
















