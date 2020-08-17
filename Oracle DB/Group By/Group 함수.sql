-- trunc(�Ҽ��� �ڸ��� ���� ����) /�ø� : ceil, floor, round /��Į�� ��
-- �׷��Լ����� group by�� �� ���� �� �� ���� ���� ����, ��ü �� �ϳ��� ���� ��ȯ
SELECT max(salary), min(salary), trunc(avg(salary),2),count(*),sum(salary) --(��ȸ�� �÷�(��))
from employees;  --���̺��
--where commission_pct is null; -- commission_pct�� null�� ���� ������ �ִ� ������

-- �׷��Լ����� group by�� ��ü �� �� ��, ���� ���� ����, ����� ���� �ʹ�.. 
-- having�� group by�� whereó�� ������ �ɾ��ְ� ���� ��
select job_id, manager_id, max(salary), min(salary), trunc(avg(salary),2), count(*)
from employees
group by job_id, manager_id
having count(*) >= 5 
order by job_id, manager_id;
-- group by : job_id���� �հ� �� ���...

-- job_id�� ���� ��������, ���� �� manager_id �������� ��. ���� �������� order by

commit;