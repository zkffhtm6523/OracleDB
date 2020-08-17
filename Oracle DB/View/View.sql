-- 가상테이블, join도 나름 가상테이블처럼 쓰는 것
-- 이 쿼리문이 항상 실행되는 결과물

create view view_boardlike_cnt
as -- Alias 
select i_board,count(i_board)as like_cnt --Alias 아님
    from t_board_like
    group by i_board;
    
select * from view_boardlike_cnt;

drop view view_boardlike_cnt;

commit;

select * from t_board;