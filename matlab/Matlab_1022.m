Arr = [1 2 3; 4 5 6]

%------------structure (struct)
data.name = 'John'
data.age = 23
data.salary_range = [23 26]; 

data(2).name = 'Bob'
data(2).age = 25
data(2).salary_range = [31 36]; 

%??
app.Button.Value = 'on'

%--cell array
data_cell = {'this'; 234; 'that'}
data_cell{2}
data_cell{2,3}= 'word'
data_cell{2,4}= [3 4; 5 4]
data_cell{2,5}= [data_cell(1)]

