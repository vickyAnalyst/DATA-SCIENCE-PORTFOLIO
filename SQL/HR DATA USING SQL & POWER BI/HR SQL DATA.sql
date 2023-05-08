use hr;
select * from hr;

-- GENDER BREAKDOWN OF EMPLOYEES
select gender,count(id) as gendercount 
from hr group by gender order by 2 desc;


-- RACE BREAKDOWN OF EMPLOYEES
select race,count(id) as emp_num
from hr group by race
order by 2 desc;


-- AGE DISTRIBUTION OF EMPLOYEES
select year(birthdate), year(curdate()) - year(birthdate) as age ,count(id) 
from hr 
group by birthdate
order by year(birthdate) desc;

-- update '_' to '/'
update hr set birthdate = replace(birthdate, '-','/');
-- change column data type to date
update hr
set birthdate= str_to_date(birthdate, '%d/%m/%Y');

-- NO OF EMPLOYEES AT HEADQUARTERS VS REMOTE
select location, count(id) as Emp_Num
from hr group by Location
order by count(id) desc;


-- GENDER DISTRIBUTION ACROSS DEPARTMENT & JOBTITLE
select department,  jobtitle,gender, count(id) as emp_number 
from hr group by department,jobtitle,gender
order by department,jobtitle;


-- DISTRIBUTION OF JOBTITLE ACROSS COMPANY
select jobtitle, count(id) as jobtitlecount
 from hr group by jobtitle
order by count(id) desc;


-- DEPARTMENT WITH HIGHEST TURN OVER RATE
select department, count(termdate) as turn_over_rate
from hr
where termdate  != ''
 group by department
order by count(termdate) desc;	


-- DISTRIBUTION OF EMP ACROSS LOCATION_STATE
select location_state, count(id) as count
from hr group by location_state
order by count(id) desc;	


-- CHANGE IN EMP NO BASED ON HIRE & TERM DATES
select  termdate, count(id) as emp_no
from hr 
where termdate != ''
group by  termdate
order by count(id) desc;

select  hire_date, count(id) as emp_no
from hr group by  hire_date
order by count(id) desc;



-- TENURE DISTRIBUTION FOR EACH DEPARTMENT
select department, hire_date, count(hire_date) as Tenuredistribution
from hr group by department, hire_date
order by count(id) desc;







