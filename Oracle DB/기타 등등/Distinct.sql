
--w3schools.com

--distinct  : �ߺ��� �� ����
--lpad : lpad(column name, ǥ���� ������ �ڸ���, ���� ������ �ڸ��� �ʰ� �� �� ���� �޿� ������)
select distinct job_id,manager_id from employees;

select lpad(salary,8,0) from employees;

select job_id,manager_id from employees;

select phone_number from employees;

select job_id, max(salary), min(salary),avg(salary), count(*), sum(salary),sum(salary)/count(salary)
from employees
group by job_id;
--job_id���� �հ� �� �ִ밪 ��...

select distinct lpad(phone_number,13,'1') from employees;

select lpad(phone_number,3), max(salary), min(salary)
from employees
group by lpad(phone_number,3)
having max(salary) >= 10000;