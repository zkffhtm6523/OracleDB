/*
2. 현재 나이를 리턴하는 사용자 정의 함수를 작성하고 호출하세요.
- 함수명 : fn_GET_AGE
- 파라미터 : 8자리 문자열 (e.g. 19871123)
- 리턴타입 : 정수
*/

CREATE OR REPLACE FUNCTION fn_get_age(v_birth_date char)
return number
is
    v_current_year char(4);
    v_birth_year char(4);
    v_age number;
begin
    select to_char(sysdate, 'yyyy'),substr(v_birth_date,1,4)
    into v_current_year, v_birth_year
    from dual;

    v_age := to_number(v_current_year)-to_number(v_birth_year)+1;
    -- select to_number(v_current_year) - to_number(v_birth_year)+1
    -- into v_age
    -- from dual;
    return v_age;
end;

commit;

select fn_GET_AGE('19851022') from dual;

select * from t_order;

select * from t_customer;

