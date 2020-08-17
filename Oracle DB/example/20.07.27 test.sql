create table t_customer(
    cus_no number(10) primary key,
    nm varchar2(10)
);

create table t_order(
    o_no number(10) primary key,
    cus_no number(10),
    o_date date not null,
    o_price float(8) default 0,
--    o_price number(8,1) default 0,
    foreign key(cus_no) references t_customer(cus_no)
);
commit;
drop table t_order;

insert into t_customer(cus_no, nm) values (3,'홍길동');
insert into t_customer(cus_no, nm) values (5,'이순신');
select * from t_customer;

insert into t_order(o_no,cus_no,o_date,o_price) values (1,3,'20170704',55000.0);
insert into t_order(o_no,cus_no,o_date,o_price) values (2,5,'20170801',70000.0);
insert into t_order(o_no,cus_no,o_date,o_price) values (3,3,'20170706',60000.0);
delete from t_order where o_no = 1;
select * from t_order;
select * from t_customer;

update t_customer set nm = '장보고' where cus_no = 5;

select * from t_order where cus_no = 3;
select o_no, o_price from t_order;
commit;
select * from t_order;
delete from t_order where o_no = 2;

select * from user_tables;
select * from USER_INDEXES;
select * from user_views;

create index idx_customer_nm on t_customer(nm);
drop index idx_customer_nm;

select * from t_order A join t_customer B on A.cus_no = B.cus_no;
create view view_order_info as
select a.o_no,a.o_date,a.o_price,b.nm from t_order A join t_customer B on A.cus_no = B.cus_no;
select * from view_order_info;

drop view view_order_info;

create or replace view view_order_info
as
select A.o_no,A.o_date,A.o_price,b.nm,cus_no
from t_order A
inner join t_customer B
using(cus_no);
