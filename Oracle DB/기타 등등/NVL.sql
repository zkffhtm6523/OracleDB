select employee_id, nvl(commission_pct,0),commission_pct from employees;

--select nvl(�÷���,'') as �÷��� from dual; ����Ŭ
--select ifnull(�÷���,'') mysql, cpu�� 64��Ʈ��� �ص� ó�� ������ 4����Ʈ, int�� 4����Ʈ, integer�� 8����Ʈ-----

-- �ڹٿ��� null���� ���� �� �ִٴ� ���� �ּҰ��� ����ų �� �ִٴ� �ǹ�
-- ���ڵ� 20�� �� 2�� null��, null�� ���� Ư�� ������ �ٲٷ��� �� �� ..
commit;