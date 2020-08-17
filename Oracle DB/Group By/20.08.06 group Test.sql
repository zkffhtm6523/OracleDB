<<<<<<< HEAD
-- 4. 그룹 함수를 활용하여 EMPLOYEE 테이블에서 직업(job)별 최소 월급, 최대 월급, 모두 더한 월급, 인원, 평균 월급 값을 나타내게 하세요
select * from employees;

select job_id,min(salary),max(salary),sum(salary),count(*),avg(salary)
from employees
group by job_id
order by count(*) desc;


select job_id,count(*)
from employees
group by job_id
order by count(*) desc;

=======
-- 4. 그룹 함수를 활용하여 EMPLOYEE 테이블에서 직업(job)별 최소 월급, 최대 월급, 모두 더한 월급, 인원, 평균 월급 값을 나타내게 하세요
select * from employees;

select job_id,min(salary),max(salary),sum(salary),count(*),avg(salary)
from employees
group by job_id
order by count(*) desc;


select job_id,count(*)
from employees
group by job_id
order by count(*) desc;

>>>>>>> 1c03be4f2e5e0b2aff6ddfa6d6176b3926c1c06e
commit;