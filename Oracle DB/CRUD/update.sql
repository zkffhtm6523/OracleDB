update t_student set nm = ' �赵��', age = age + 1 where i_student = 2;
--0�� ���� ������Ʈ �Ǿ����ϴ�. where���� �߸� �Ǿ��ٰ� �ؼ� error�� �߻����� ����
--pk���� ����
update t_student set nm = ' �赵��', age = age + 1 where i_student = 21;
--
update t_student
set nm = (select nm from employees where employee_id = 100)
, age = (select employees from employees  where employee_id = 100);
-- ��Į��(���� ��)
select * from t_student;
rollback;
commit;
