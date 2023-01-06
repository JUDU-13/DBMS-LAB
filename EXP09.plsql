######################################################################################

DECLARE
num_a number:=6;
num_b number:=0;
num_c number;
BEGIN
num_c:=num_a/num_b;
dbms_output.put_line('Answer : '||num_c);
EXCEPTION
When zero_divide
then
dbms_output.put_line('Value of a :’||num_a|| ’ , b : ’||num_b);
dbms_output.put_line('Trying to divide by zero (a/b)’);
end;
/

######################################################################################

DECLARE
temp varchar(20);
BEGIN
select name into temp from employee where id=105;
EXCEPTION
WHEN no_data_found 
THEN
dbms_output.put_line('Error');
dbms_output.put_line('There is no such data');
end;
/

######################################################################################

