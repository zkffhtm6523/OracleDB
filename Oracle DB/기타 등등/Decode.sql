SELECT job_id as ���̵�, 
decode(job_id, 'IT_PROG','���α׷���'
              , 'FI_ACCOUNT','������'
              , 'AD_VP','���̵� ������',' ') as �����
FROM employees;
--decode(��ȸ�� �÷�, �÷��� ���ǰ��̸�, ���ǰ��� ���� �� "~~" ���, �ƴ϶�� "")
--NVL(~~~,"null ��ü�� ����")

select decode(job_id, 'IT_PROG','���α׷���'
              , 'FI_ACCOUNT','������'
              , 'AD_VP','���̵� ������'
              ,'ffff') as �����
-- case���� decode�� �Ȱ��� ����
,case job_id when 'IT_PROG' then '���α׷���'
             when 'FI_ACCOUNT' then '������'
             when 'AD_VP' THEN '���̵� ������'
             ELSE 'ffff' END
FROM employees;