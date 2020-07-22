select * from t_student;

drop table t_student2;
create table t_student2(
    i_student_1 number unique not null,
    i_student_2 number unique not null,
    age number(3) not null,
    primary key(i_student)
);

insert into t_student2(i_student1, i_student_2,age) values(1,1,10);
insert into t_student2(i_student1, i_student_2,age) values(1,2,10);
--둘 다 unique not null을 주면 2번째 insert into 값이 안 들어가진다.
--primary key는 들어가짐