create table t_board4_like(
    i_user number not null,
    i_board number not null,
    r_dt date default sysdate,
    primary key(i_user, i_board),
    foreign key(i_user) references t_user(i_user),
    foreign key(i_board) references t_board4(i_board)
);
select * from t_board4_like;

commit;
--------------------------------------------------------------
select A.*,B.nm, DECODE(C.i_user, null, 0, 1) as yn_like
from t_board4 A

inner join t_user B
on A.i_user = B.i_user

left join t_board4_like C
on A.i_board = C.i_board
and C.i_user = 32
where A.i_board = 16;
---------------------------------------------------------------

insert into t_board4_like
(i_user, i_board)
values
(32, 16);

delete from t_board4_like where i_user = 32;
select * from t_board4_like;
select * from t_board4;