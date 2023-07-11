-- 문자 함수
-- left(문자열 상수| 변수 | 열.문자 수)

select left ('MySQL', 5); -- MySQL 반환
select left ('MySQL', 0); -- 빈값
select left ('MySQL공부하기', 40); --MySQL공부하기, 주어진 문자열보다 길이보다 긴 문자 수를 지정하면 전체를 반환

-- order_h테이블에 left()함수 적용 

select left(orderno,6) from order_h; 
select memid, memid, ordamt from order_h where left(orderno, 6) = '202201';

-- right() , 으론쪽에서 부터 부분문자열을 반환한다.
select right(orderno,6) from order_h;