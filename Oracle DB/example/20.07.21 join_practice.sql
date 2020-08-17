select * from t_student where i_student in (
select i_student from t_student
where i_student <= 4);

select * from t_student where i_student <= 4;

select employee_id, nvl(commision_pct,0) from employees;
--A..B는 별명주는 것, 1번은 모든 컬럼 불러오기
select * from t_student_hobby A
inner join t_student B
ON a.i_student = b.i_student;
-- 2번 : 그 다음 컬럼을 수정
select B.i_student, B.nm, A.i_hobby, C.* --불러올 컬럼
FROM t_student_hobby A --본 테이블
INNER JOIN t_student B --가져와서 조인할 테이블 1
ON A.i_student = b.i_student  -- 결합 1
INNER JOIN t_hobby C -- 가져와서 조인할 테이블 2
ON A.i_hobby = c.i_hobby; -- 결합 2
-- on : t_student와 t_student_hobby의 테이블이 칼럼명이 같을 때
