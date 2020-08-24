insert into t_board4 (i_board, title, ctnt, i_user) values(1,'제목','내용',23);
drop table t_board4;
commit;


select * from t_board4;
insert into t_board4 (i_board, title, ctnt, i_user) values(3,n'💖💖💖💖💖💖💖💖💖💖💖💖💖',n'😀',23);
insert into t_board4 (i_board, title, ctnt, i_user) values(1,'제목',n'😊',23);
select * from t_user;

select A.i_board, A.title, A.ctnt, A.i_user, a.hits, b.nm
from t_board4 A
inner join t_user B
on a.i_user = b.i_user;

select t_board4.i_board, t_board4.title, t_board4.r_dt, t_board4.i_user, t_board4.hits, t_user.nm
from t_board4
inner join t_user
on t_board4.i_user = t_user.i_user;

commit;

select * from t_user;
select * from t_board4;
select t_board4.title, TO_CHAR(t_board4.r_dt, 'YYYY/MM/DD HH24:MI') as r_dt,TO_CHAR(t_board4.m_dt, 'YYYY/MM/DD HH24:MI') as m_dt , t_board4.hits, t_board4.ctnt, t_user.nm
from t_board4
inner join t_user
on (t_board4.i_user = t_user.i_user)
order by t_board4.i_board desc;

update t_board4 set title = '업데이트 테스트2', ctnt = '업데이트 테스트 내용', m_dt = sysdate where i_board = 5;
select * from t_board4;
desc t_board4;
INSERT INTO t_board4 (hits) select nvl(max(hits),0)+1 from t_board4;
update t_board4 set hits = (select nvl(max(hits),0)+1 from t_board4) where i_board = 16;
select nvl(max(hits),0) from t_board4;
commit;