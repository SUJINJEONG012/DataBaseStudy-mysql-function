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

-- *** substring(), substr(), mid() *** 함수 => 함수 이름만 다를 뿐 같은 기능의 함수

-- 인수로 주어진 문자열 상수 또는 변수/열의 값에서 지정한 위치부터 문자 수 만큼의 부분 문자열을 반환하고, 
-- 문자 수를 생략하면 지정한 위치부터 문자열 끝까지의 부분문자열을 반환한다.

select substring(orderno, 5,2) from order_h; -- 다섯번째순서, 문자수

-- elt() field() find_in_set() 함수
select elt(2,'월','화','수','목','금', '토'); -- 화 , 숫자번째의 문자열을 반환
select elt(7,'월','화','수','목','금', '토'); -- null , 숫자번째인 항목이 없을땐 null반환

select field('수', '월', '화', '수', '목','금','토'); -- 3 , 위치를 반환
select field('일', '월', '화', '수', '목','금','토'); -- 0 , 숫자번째인 항목이 없을땐 null반환

select find_in_set('목', '월,화,수,목,금,토'); -- 4반환
select find_in_set('수목', '월,화,수목,금,토'); -- 3반환

-- lower(), lcase()함수 , 소문자로 변환
select lower('MySQL');
select lcase('MySQL'); 

-- upper(), ucase() 함수
select upper('mysql');
select ucase('mysql');