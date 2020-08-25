select b.nm, A.i_user 
from t_board4_like A
inner join t_user B
on A.i_user = B.i_user
where a.i_board = 18;


commit;

select * from t_user;
select * from t_board4_like order by i_user;