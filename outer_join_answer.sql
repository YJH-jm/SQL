-- 각 나라에 있는 사무실의 위치를 출력하기 위해 countries 와 locations table을 이용하여 
-- country_name, city, street_address을 출력하시오.




--1. table 목록 확인
select * from tab;

--2. 각 테이블 당 속성(attribute) 값 확인
desc countries
desc departments
desc employees
desc jobs
desc job_history
desc regions
desc locations
/*
  hr table
    - countries(country_id, country_name, region_id)
    - departments(department_id, department_name, manager_id, location_id)
    - employees(employees_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
    - emp_details_view(employee_id, manager_id, department_id, location_id, coun, first_name, last_name, salary, commission_pct, department_name, job_title, city, state_province, country_name, region_name)
    - jobs(job_id, job_title, min_salary, max_salary)
    - job_history(employee_id, start_da, end_date, job_id, department_id)
    - regions : (region_id, region_name)
    - locations(상세주소) : (location_id, street_address, postal_code, city, state_province, country_id)
*/


-- table에서 겹치는 속성 값들 확인하여 적절한 속성 선택
select distinct country_id from locations order by country_id;
/*

COUN
----
AU
BR
CA
CH
CN
DE
IN
IT
JP
MX
NL
SG
UK
US

14 rows selected.
*/

SQL> select distinct country_id from countries order by country_id;

/*
COUN
----
AR
AU
BE
BR
CA
CH
CN
DE
DK
EG
FR
IL
IN
IT
JP
KW
ML
MX
NG
NL
SG
UK
US
ZM
ZW

25 rows selected.
*/

-- location 의 country_id가 countries 의 county_id에 포함됨

select c.country_id, country_name, city, street_address from countries c, locations d where c.country_id = d.country_id(+);

