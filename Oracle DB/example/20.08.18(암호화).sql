select * from t_user;
delete from t_user where i_user = 2;
commit;

create table t_board4(
    i_board number primary key,
    title varchar2(100) not null,
    ctnt varchar2(2000) not null,
    hits number default 0,
    i_user number not null,
    r_dt date DEFAULT sysdate,
    m_dt date DEFAULT sysdate,
    FOREIGN key(i_user) REFERENCES t_user(i_user)
);
commit;

select * from t_user;
insert into t_board4
(i_board, title, ctnt, i_user)
values
(1, 😊, 🐱‍,5)