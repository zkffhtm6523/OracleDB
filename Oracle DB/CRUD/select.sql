select * from t_student
where i_student in ( --��ȣ���� ��������, ������ in���� ����� �Ѵ�.
select i_student --�÷� 2�� ������ �� �ȴ�.
from t_student
where i_student <= 4);
--null�� ã�� ���� �� in null�� �������.
/**/
select * from t_student
where i_student = ( --��ȣ���� ��������
select i_student --�÷� 2�� ������ �� �ȴ�.
from t_student
where i_student = 4);

select i_student, nm, age as student_age
from t_student
where (i_student <= 3 and age <= 21) or i_student = 6
order by i_student desc;

select i_student, nm, age as student_age
from t_student
where nm like '%��%'
order by age desc, nm desc;

select i_student, nm, age as student_age
from t_student
where((i_student <= 3 and age <= 21) or i_student = 5)
and nm like '%��%'
order by i_student desc;

select * from employees;
select * from t_student;
-- �߿�

select 2020,first_name,employee_id from employees where employee_id = 10;
select * from employees;
select * from t_student order by i_student desc;

--lpad : ���� ���ڸ��� ä��� ���� ��
select lpad(1,2,'0') from dual;

-- substr : 4��° �ڸ����� 2�� ����
select first_name, substr(first_name, 4,2) from employees;

-- instr : first_name�� 'a'�� �߰ߵ� �ڸ���
select first_name, instr(first_name,'a') from employees;
select first_name, instr(first_name,'a', -1) from employees;
-- trim ,���� ���� ltrim, ������ ���� rtrim
select trim('    a    ') from dual;
-- length
select trim('    a  '), length('   a  ') from dual;
-- concat : ���ڿ� ��ġ��, mysql�� �� ���� �ȴ�. oracle�� concat�� �� �� �� �� ����� ��
select concat(concat('a','b'),'c') from dual;
commit;
