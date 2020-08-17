create index idx_student_age
on t_student(age);

--t_student의 age컬럼은 where절을 실행할 때 앞으로 많이 빨라짐

drop index idx_student_age;

--pk 및 unique 생성 시 index도 같이 생성
--고유 및 기본키의 index는 삭제할 수 없습니다.


--where절을 많이 안 쓴다. 그러면 굳이 index를 안 써도 됨

select * from t_board order by i_board asc;

delete from t_board_like;

insert into t_board values(1,'하하','ㅇㅇㅇㅇㅇ',1);
insert into t_board values(3,'하하','ㅇㅇㅇㅇㅇ',1);
insert into t_board values(4,'크크','ㅇㅇㅇㅇㅇ',2);
insert into t_board values(5,'크크','ㅇㅇㅇㅇㅇ',3);
rollback;
commit;

select * from t_board;
select * from t_student order by i_student;
select nvl(max(i_board),0) +1 from t_board;

insert into t_board
(i_board,title,ctnt,i_student)
select nvl(max(i_board),0) +1,'ddddd','내용ㅋㅋㅋ',5
from t_board;

insert into t_board
(i_board,title,ctnt,i_student)
select nvl(max(i_board),0) +1,'ㅋㅋㅋㅋㅋ','에러 점검',6
from t_board;