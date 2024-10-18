--- HR ANALYTICS Group1---

create database hr_analytics;

select * from hr_1;
select * from hr_2;

--- Total Employees

select count(distinct(employeeid)) as Total_employees 
from hr_2;


--- Employees by gender

select gender,count(distinct(EmployeeNumber)) as Employee_count 
from hr_1 
group by gender;


--- Attrition count

select count(attrition) as Attrition_count 
from hr_1
where Attrition='yes';


--- Attrition rate

select format(avg(a.Attrition_yes)*100,2) as Attrition_rate
from
(select attrition,
       case
       when attrition='yes' 
       then 1 
       else 0
       end as attrition_yes
from hr_1) as a;



--- Gender wise attrition rate

select a.gender,format(avg(a.attrition_yes)*100,2) as Attrition_rate
 from 
(select gender,attrition,
case 
when Attrition='yes' 
then 1 
else 0 
end as attrition_yes from hr_1) as a
group by gender;


--- KPI 1:- Average Attrition rate for all Departments

select Department,(sum(case Attrition when 'yes' then 1 else 0 end)/count(*))*100 as avg_attrition 
from hr_1 
group by department
order by department ;



--- KPI 2:- Average Hourly rate of Male Research Scientist   

select Gender, JobRole, avg(HourlyRate) as avg_hourlyrate FROM hr_1 
where gender='male'and jobrole="research scientist";



--- KPI 3:- Attrition rate Vs Monthly income stats      

 select a.department,
 format(avg(attrition_yes)*100,2) as attrition_rate,
 format(avg(monthlyincome),2) as AVG_monthlyincome 
 from
 (select department,attrition,employeenumber,
 case 
 when attrition='yes'
 then 1
 else 0 
 end as attrition_yes from hr_1)as a
 join
 hr_2 as b on a.employeenumber=b.employeeid
 group by a.department;



--- KPI 4:- Average working years for each Department

 select department,format(avg(totalworkingyears),0) as Avg_workingyears
 from 
 hr_1 join hr_2  on hr_1.employeenumber=hr_2.employeeid 
 group by department;



 --- KPI 5:- Job Role Vs Work life balance
 
 select jobrole,avg(worklifebalance) as Avg_worklifebalance
 from
 hr_1  join hr_2 on hr_1.EmployeeNumber=hr_2.employeeid
 group by jobrole;
 
 
 
--- KPI 6:- Attrition rate Vs Year since last promotion relation     
 
 select distinct YearsSinceLastPromotion, sum(case attrition when 'yes' then 1 else 0 end)/count(employeecount)*100 as atr_rate 
 from hr_1
 join hr_2 
 on hr_1.EmployeeNumber= hr_2.`EmployeeID`
 group by YearsSinceLastPromotion
 order by YearsSinceLastPromotion;
 
  --- Attrition count by Marital status
 
 select Maritalstatus,count(attrition) as Attrition_count 
 from hr_1 where attrition='yes'
 group by MaritalStatus;
 
 
 --- Average job satisfaction by department
 
 select department,format(avg(jobsatisfaction),2) as Job_satisfaction 
 from hr_1
 group by department;
 
 --- Performance rating by Department
 
 select Department,format(avg(performancerating),1) as Avg_performancerating
 from hr_1 join hr_2 on hr_1.EmployeeNumber=hr_2.EmployeeID
 group by department;
 
 
 
 
 
 
 