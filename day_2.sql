create table college(
std_id int not null,
std_name varchar(50),
std_last_name varchar(50),
number int not null
);

select * from colleges;
 alter table college alter column number type varchar(50);

 insert into college(
 std_id,
 std_name,
 std_last_name,
 number)
 values(1,
'akash', 'patil', 86464545
 );

 insert into college(
std_id,
std_name,
std_last_name,
number)
values(
2,'pavan', 'jadhav', 54842345
);
 select * from college;







 create table data_council(
emp_id int,
emp_name varchar(50),
address varchar(50),
salary varchar(50)
 );

 select * from Data_council;

 alter table data_council alter emp_id set not null;

 alter table data_council alter salary set not null;

 insert into data_council(
emp_id,emp_name, address,salary
 )values
(
1,'prashant jadhav','kothrud','80'
);
select * from data_council;

update data_council set emp_name = 'pavan kulkarni' where emp_id = 1;

alter table data_council drop column address;
drop table data_council;





create table projects(
P_id int not null,
p_title varchar(50) not null,
std_id int,
submission_date varchar(50) null,
guide_name varchar(50),
status varchar(50),
remarks varchar(50) null
);

select * from projects;


insert into projects(
p_id,p_title,std_id,  guide_name, status)
values(
1,'ecommerce app', 223,'pachare sir','level1');
select * from projects;

insert into projects(
p_id,p_title,std_id,guide_name,status
)values
(2, 'amazon',254,'hemant sir','level3'),
(3,'flipkart',245,'rushi sir','level2'),
(4,'meesho',145,'om sir','level1'),
(5,'mnytra',300,'sanchit sir','level5');

select * from projects;

update projects set guide_name = 'dr.shreya' where p_id = 3;

update projects set status = 'submitted' where guide_name = 'om sir';

update projects set submission_date = '5-7-2025' where p_id = 5;

select * from projects;

delete from projects where p_title = 'amazon';

select * from projects;

select * from projects where p_id = 5;