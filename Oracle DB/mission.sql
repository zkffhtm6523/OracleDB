/*employees ���̺��� ��ȭ��ȣ (423�� ���Ե� ����� ��� ��������)*/
select lower(first_name) from employees where PHONE_NUMBER like '%.423.%' order by employee_id asc;

/*    A�����               B����
��    �ݾ�                  �ݾ�
�ڵ��� 100000  70000       10000   40000
        update��             update��
Ʈ����� : �� �� ������ �� ������ ���� commit
�� ���� ������Ʈ�� �߾����� ��� ���忡�� �ϳ��� �۾�
�߾����� ������� A,B �Ѵ� ������Ʈ ���� �� �������� �� 1 ����
�߾����࿡�� �㰡�ϸ� ����

�Խ��� ���� �����ϱ� ���ؼ� ��۵��� �����ϰ� ���� 
�Խ��� ���� �����ϴ� ��. �̻� ���� �� rollback
*/

insert into t_student (i_student,nm,age) values(10,'dddd',23);

select * from t_student order by i_student desc;

commit;


