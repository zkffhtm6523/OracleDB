/*DB안에 for문 돌리고, if문 돌리고*/
        /*존재하면 덮어쓰는 것  */
        /*파라미터 선언부*/
/*
1. T_ORDER 레코드를 삽입하는 프로시저를 작성하고 호출하세요.
- 프로시저명 : proc_INSERT_ORDER
- 파라미터 : o_no, cus_no, o_price에 사용할 값
- 파라미터 타입은 해당 테이블의 각 컬럼 타입을 참조하도록 처리
- o_date는 insert 되는 현재날짜 값을 사용
- 같은 이름의 프로시저가 존재하면 덮어쓰고 없으면 생성되게 처리
- 값 삽입 후 commit 되게 처리
- 작성한 프로시저를 호출
*/        

CREATE OR REPLACE PROCEDURE proc_INSERT_ORDER
(
p_o_no T_ORDER.o_no%TYPE, 
p_cus_no T_ORDER.cus_no%TYPE,
p_o_price T_ORDER.o_price%TYPE
)
IS
BEGIN
    INSERT INTO T_ORDER(o_no, cus_no, o_date, o_price)
    values(p_o_no, p_cus_no ,sysdate, p_o_price);
    commit;
END;


EXEC proc_INSERT_ORDER(2,5,10200);

/* p_o_no IN T_ORDER.o_no%TYPE, /*p_o_no는 T_order.o_no의 타입과 맞추겠다*/
select * from t_order;
commit;