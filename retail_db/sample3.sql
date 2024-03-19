alter table cars add carNo int;
select * from cars where colour IS NULL; 
update cars set colour='white' where model='Mustang';
select * from cars;
update cars set colour='red' where model='Celica';
select * from cars;