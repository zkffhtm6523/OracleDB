create sequence seq_userloginhistory
start with 0
minvalue 0
nocache;

commit;

create table t_user_loginhistory(
    i_history number primary key,
    i_user number not null,
    ip_addr varchar2(15) not null,
    os varchar2(10) not null,
    browser varchar2(10) not null,
    r_dt date default sysdate,
    foreign key(i_user) references t_user(i_user)
);
-- default : 아무 값을 안 넣어도 설정한 값이 기본적으로 들어간다.
-- foreign key 거는 이유 : 잘못된 값이 안 들어가기 위해서 거는 것
commit;
select * from t_user;

desc t_user_loginhistory;
select * from t_user_loginhistory;

drop table t_user_loginhistory;
drop sequence seq_userloginhistory;