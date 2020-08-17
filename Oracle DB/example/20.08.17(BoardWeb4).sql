create table t_user(
    i_user number primary key,
    user_id varchar2(30) not null,
    user_pw varchar2(100) not null,
    nm varchar2(20) not null,
    email varchar2(40),
    profile_img varchar2(50),
    r_dt date default sysdate,
    m_dt date default sysdate
);
drop table t_user;
select * from t_user;

--시퀀스는 시작하자마자 20이 증가되어있어서, 컴퓨터 캐쉬 기능 꺼야함.
create sequence seq_user
nocache;
drop SEQUENCE seq_user;
commit;

select * from t_user;
delete from t_user;