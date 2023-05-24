insert into employee  (first_name,last_name,email,salary)
values 
( 'first_emp1','last_emp1','emp1@test.com',1230),
( 'first_emp2','last_emp2','emp2@test.com',5240),
( 'first_emp3','last_emp3','emp3@test.com',62508),
( 'first_emp4','last_emp4','emp4@test.com',78238),
( 'first_emp5','last_emp5','emp5@test.com',6,923);

insert into department(name)
values 
('Sales'),
('marketing'),
('R&D'),
('Retail');

select e.first_name, e.last_name  
from employee e ;

select e.first_name, e.last_name  
from employee e 
where e.salary >=5000;

select e.first_name, e.last_name , e.salary 
from employee e 
order by e.salary desc 
limit 1;

select avg(e.salary)  
from employee e ;


insert into department (name)
values
('Marketing'),
('R&D'),
('Retail'),
('Sales');

select e.first_name ,d.department_name  
from employee e inner join department d on d.id =e.department_id
where d.department_name ='Sales';

select count(e.department_id) ,d.department_name 
from employee e inner join department d on d.id =e.department_id
group by e.department_id ; 

select avg(e.salary),d.department_name 
from employee e inner join department d on d.id =e.department_id
group by e.department_id; 
