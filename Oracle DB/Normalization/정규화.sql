/*                                                              1����ȭ ����, ��̰� ���� ����� ���� ���� ����.
                                                                �÷��� �ƴ� Ʃ�÷� ����.. �׷��ٰ� ���� Ʃ�ÿ� ��̸� �ٸ��� �ϸ� �ȵ�.
pk(��ȣ)  �̸�   ����  ��ȭ��ȣ               �ּ�            ���    ���2   ���3
1       ����     20   010-2222-3333       �뱸�� ��¼��     ����     ����   ���ǰ���
2       ����     21   010-333-5555        ����� ��¼��     ����

�� 1����ȭ : �� �÷��� ���Ұ��� ���ߵ�. ��� : ����,����... �̷��� �ȵ�

���      ���
����      ��ȭ����
          ��å
    1�� ��
    
�ٴ�� ����(3���̺� �̻�)
���̺�1 : ���
���̺�2 : ���
���̺�3 : ���-���

��� ���(�ߺ��� �Ǳ� �ϴµ�, ���ڿ��� �ߺ����� ����)
�����ȣ    ��̹�ȣ
1           2
1           4
2           1
3           5
3           3

�ܷ�Ű�� ������� : ��̰� 3������ �ִµ�, ������ ���̺��� ��� �÷��� 4���� �� �����.

���� �����ؼ� PK�� �������� Ű���� �� ������ �ؼ� select������ ���� ���ϰ� ����������
���Ἲ(�߸��Ȱ� X, �ߺ����� �ʰ�, �����ϱ� ���ϰ�)..... \
����ȭ�� ���� �Ѵٰ� ���� �� �ƴ� : ���̺� �� ���� �� �ҽ� ���� ��Ƹ���

������ȭ : �� ���̺� �ظ��ϸ� ��������. ����ȭ�� ������ȭ ������ �߿�

������ ����ȭ�� ����..


������ © �� ERD��� ���� ����.. �ڹٴ� �ν��Ͻ�(��ü), DB�� entity

�޴�����ȣ�� �ߺ����� ������ PK�� �� ������ ���ڿ��� �ϴ°� ��ȿ����
*/

create table t_hobby(
    i_hobby number primary key,
    nm varchar2(30) not null
);

insert into t_hobby(i_hobby,nm) values(1,'����');
insert into t_hobby values(2,'���ǰ���');
insert into t_hobby values(3,'��ȭ����');
insert into t_hobby values(4,'����');
insert into t_hobby values(5,'��å');
insert into t_hobby values(6,'���α׷���');
select * from t_hobby;
commit;
drop table t_student_hobby;
create table t_student_hobby(
    i_student number,
    i_hobby number,
    r_dt date default sysdate,
    -- sysdate�� ���� ��¥,
    primary key(i_student,i_hobby),
    --2�� �̻��� ���� primary key�� �̷��� ��� �Ѵ�.
    foreign key(i_student) references t_student(i_student) on delete cascade,
    foreign key(i_hobby) references t_hobby(i_hobby)
    -- ���������� �ɾ���. t_hobby�� i_hobby�� ���� �� ���̺��� i_hobby�� �ʰ����� ����
    -- t_hobby�� i_hobby�� ���� ����. �������¶�.
    -- ���� ����� �ϰ� ������ cascade�� �ɰ� ����. �׷��� t_hobby�� i_hobby�� t_student_hobby�� i_hobby�� ���� ������.
);
commit;
select * from t_student_hobby;
insert into t_student_hobby(i_student, i_hobby) values (1,2);
insert into t_student_hobby(i_student, i_hobby) values (1,4);
insert into t_student_hobby(i_student, i_hobby) values (2,1);
insert into t_student_hobby(i_student, i_hobby) values (3,5);
insert into t_student_hobby(i_student, i_hobby) values (3,3);
insert into t_student_hobby(i_student, i_hobby) values (3,1);
