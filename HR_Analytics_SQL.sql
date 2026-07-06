create database hr_analytics;
use hr_analytics;

select * from employee_data
limit 10;

select count(*) As Total_Employees from employee_data;

select count(*) as Attrition_Count 
from employee_data
where Attrition = "Yes";

select 
round(
sum(CASE when Attrition = "Yes" Then 1 else 0 end)*100.0/Count(*),
2 
) As Attrition_Rate from employee_data;


select Department,
count(*) as Employees
From Employee_data
Group By Department
order by Employees desc;

select gender, 
count(*) as Total_employees
from employee_data
group by Gender;

select Department,
count(*) as Attrition
From Employee_data
where Attrition ='Yes'
Group By Department
order by Attrition desc;

select JobRole,
count(*) as Attrition
From Employee_data
where Attrition='Yes'
Group By Jobrole
order by Attrition desc;

select Department, 
round( Avg(MonthlyIncome),2)as
Avg_Salary
from employee_data
group by Department;

select Department,
round( Avg(Age),1)as Avg_Age
from employee_data
group by Department;