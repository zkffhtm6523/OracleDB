
create sequence seq_board
START WITH 16;
drop sequence seq_board;
select seq_board.nextval from dual;

--시퀀스를 항상 만들고 쓰는 것, 오라클만 있음

--시퀀스 : 자동으로 순차적으로 증가하는 순번을 반환하는 데이터베이스 객체
--시퀀스 없을 시 : 서브쿼리, 사용자정의함수 등..

select * from t_board order by i_board;

commit;