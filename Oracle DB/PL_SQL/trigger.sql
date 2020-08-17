<<<<<<< HEAD
/*
3. T_ORDER 테이블의 cus_no 컬럼은 T_CUSTOMER 테이블의 cus_no를 참조한다.
T_ORDER에서 참조한 cus_no 값을 삭제하면 자동으로 T_CUSTOMER 테이블에서도 해당
cus_no 값을 가진 레코드를 삭제하는 트리거를 작성해주세요
- 트리거명 : trg_DEL_CUSTOMER
- T_CUSTOMER 테이블의 값이 삭제되기 전에 T_ORDER 테이블 레코드부터 삭제
- 한번에 cus_no 여러 값을 삭제하여도 T_CUSTOMER 테이블에서 해당 cus_no 값을 가진 모든 레코드를 삭제
*/

select * from t_order;

select * from t_customer;

--1. foreign key를 걸 때 cascade를 걸어서 삭제할 수 있게 한다
--2. t_order가서 3인 애들 삭제, 그리고 t_customer의 3 삭제
--3. trigger로 cascade가 걸린 것처럼 삭제할 수 있음



CREATE OR REPLACE TRIGGER trg_DEL_CUSTOMER
BEFORE DELETE ON T_CUSTOMER
FOR EACH ROW
BEGIN
    DELETE FROM t_order
    WHERE cus_no =:old.cus_no;
END;





commit;
/*OLD : 삭제되기 전*/
/*FOR EACH ROW*/
=======
/*
3. T_ORDER 테이블의 cus_no 컬럼은 T_CUSTOMER 테이블의 cus_no를 참조한다.
T_ORDER에서 참조한 cus_no 값을 삭제하면 자동으로 T_CUSTOMER 테이블에서도 해당
cus_no 값을 가진 레코드를 삭제하는 트리거를 작성해주세요
- 트리거명 : trg_DEL_CUSTOMER
- T_CUSTOMER 테이블의 값이 삭제되기 전에 T_ORDER 테이블 레코드부터 삭제
- 한번에 cus_no 여러 값을 삭제하여도 T_CUSTOMER 테이블에서 해당 cus_no 값을 가진 모든 레코드를 삭제
*/

select * from t_order;

select * from t_customer;

--1. foreign key를 걸 때 cascade를 걸어서 삭제할 수 있게 한다
--2. t_order가서 3인 애들 삭제, 그리고 t_customer의 3 삭제
--3. trigger로 cascade가 걸린 것처럼 삭제할 수 있음



CREATE OR REPLACE TRIGGER trg_DEL_CUSTOMER
BEFORE DELETE ON T_CUSTOMER
FOR EACH ROW
BEGIN
    DELETE FROM t_order
    WHERE cus_no =:old.cus_no;
END;





commit;
/*OLD : 삭제되기 전*/
/*FOR EACH ROW*/
>>>>>>> 1c03be4f2e5e0b2aff6ddfa6d6176b3926c1c06e
delete from t_customer where cus_no = 3;