/*
Oracle�� MySql ������ ���� ��

Oracle�� �ͼ��� ���ڴ�.. �̹� ������Ʈ���� ���� ó������ MariaDB�� ���鼭 MySql ������ ������ �ߴ�.
���ݺ��� �˰Ե� ��� ���������� �ϳ��� �ϳ��� �������� ����� �����̴�.
��Ģ��, ������ Oracle�̰� �� �񱳵Ǵ� Mysql ������ �Ʒ��� ���´�.

1. ����ġȯ �Լ� ( NVL -> IFNULL )
Oracle : SELECT NVL('�÷���', '') FROM DUAL;
MySql : SELECT IFNULL('�÷���', '') FROM DUAL;

2. ���� ��¥�ð�
Oracle : SYSDATE
Mysql  : NOW() 

3. ��¥���� 
Oracle : TO_CHAR(sysdate,'MMDDYYYYHH24MISS')
Mysql  : DATE_FORMAT(now(),'%Y%m%d%H%i%s')  -> ���⼭ �빮��Y�� 4�ڸ� �⵵, �ҹ��� y�� 2�ڸ� �⵵

4. ��¥ ���� : ����
Oracle : ������ 1~7�� �ν���  -> TO_CHAR(SYSDATE - 1, 'D') 
Mysql : ������ 0~6���� �ν�   -> DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 1 DAY), '%w')

* ����� �ڹٽ�ũ��Ʈ�� 0~6���� �ν��ϱ⿡ Oracle �������� -1�� �ؼ� ���ߴ� ��찡 ����

5. Like�� '%' ����
Oracle : Like '%'||'����'||'%' �̷������� �÷��� �յڷ� '%'�� �ٿ��ָ� �ȴ�
Mysql : LIKE CONCAT('����','%') �̷������� CONCAT �Լ� ���

6. ����ȯ
Oracle : To_char, To_number ��
Mysql : CAST
SELECT TO_CHAR(1234) FROM DUAL 
-> SELECT CAST(1234 AS CHAR) FROM DUAL

7. ��ҹ��� ������
Oracle : ���о���
Mysql : �⺻������ �����ϳ�, �������� ���� ������

8. ROWNUM
Oracle : where ���� rownum > 5 and rownum =< 10 
Mysql : where�� ���� limit 5,10

9. Sequence(������)�� �� �� ������Լ��� ���� �Ʒ��� ���� ���
Oracle : ��������.nextval
Mysql : ��������.currval

10. ���ڿ� �ڸ���
Oracle: SUBSTR(���ڿ�, 1, 10)
Mysql: SUBSTRING(���ڿ�, 1,10), LEFT(���ڿ�, 3), RIGHT(���ڿ�, 3)

11. ���ڿ� ��ġ�� ( - ���ڿ��� �����Ѵٰ� ����)
Oracle: ���ڿ�(�Ǵ� �÷�) ||' - '
Mysql: CONCAT(���ڿ�(�Ǵ� �÷�), ' - ')

12. ���� �÷����� ��
Oracle: �÷����� ����ǥ(")�� ���α� (��: select "column" from tab)
Mysql: �÷����� TAB Ű ���� �ִ� ` Ű ( Single quotation )�� ���α�

13. �������ν��� �ִ��� ���� �ľ��ؼ� Create �ϱ�
Oracle: CREATE OR REPLACE PROCEDURE ���ν�����
Mysql: DROP PROCEDURE IF EXISTS ���ν�����; �� �� �ڿ� CREATE PROCEDURE ���ν�����
*/