create index idx_student_age
on t_student(age);

--t_student의 age컬럼은 where절을 실행할 때 앞으로 많이 빨라짐

drop index idx_student_age;

--pk 및 unique 생성 시 index도 같이 생성
--고유 및 기본키의 index는 삭제할 수 없습니다.


--where절을 많이 안 쓴다. 그러면 굳이 index를 안 써도 됨
