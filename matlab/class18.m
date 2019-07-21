
%-- test if average grade of players on a team is significantly largrer than average grade 

nr_stud = 1000; % number of student in school 
stud = randi(10, nr_stud,1); % assign random grade to each student 
figure;plot( stud ,'.')
figure;hist( stud,20) % show distribution of grades (it is uniform )

players = [4 8 7 9 10 5 8 8 10 7 ]; % grades of players on the team
avr_ply = mean( players )% average grade of players 

% take randomly selected 10 students from school and calculate their averege grade. Repeat it 1000 times
avr_gr = [];
for i = 1:1000 
    avr_gr( i ) = mean( stud( randi( nr_stud, 10,1) ) );
end
figure;plot( avr_gr, '*')
figure;hist( avr_gr, 10 )

f = find( avr_gr < avr_ply ); % find all cases where average grade of 10 random students were smaller then average of players
length( f )  % number of such cases 
perc = length( f ) / nr_stud *100 % percentage of cases where average grade of 10 random students were smaller then average of players
p_our = (100 - perc)/100 %-- our estimated p-value

[h p] = ttest2( stud , players ) % t-test; 
% p is p-value; if p is smaller than 0.05 then there is significant difference between average grades of players and students
%   it means that players were not randomly selected from population of students 

effect_size = ( mean(players) - mean(stud) ) / std(stud) % Effect size 

%- correlation coeficient between 2 signals 
sig1 = -cos(0:0.1:100);
figure;plot(sig1 )

% sig2 = cos(0:0.1:100) + rand(size(sig1))*1;
sig2 =  rand(size(sig1))*1;
figure;plot( sig2)

corrcoef( sig1, sig2)


