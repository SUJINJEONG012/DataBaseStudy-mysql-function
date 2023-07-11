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

-- ltrim() , rtrim(), trim() 함수 : 빈칸제거 함수
select ltrim('    MySQL DB  '); -- 왼쪽 빈칸 제거
select rtrim('    MySQL DB  '); -- 오른쪽 빈칸 제거
select trim('    MySQL DB  '); -- 양쪽 빈칸제거, 중간에 포함된 빈칸은 제거되지않는다.

-- char_length(), character_length() 함수 : 변수/열 값의 길이, 문자수를 반환
select char_length('mysql 공부하기'); -- 10 
select character_length('  mysql 공부하기 '); --13
select char_length(trim('  mysql 공부하기 '));


-- length()함수 : 인수로 주어진 문자열 또는 변수/열 값의 길이를 바이트 단위로 반환
select length('MySQL'); --5

-- contact(), concat_ws() 함수 : 문자 결합 함수
select concat('My','SQL'); -- MySQL
select concat('My','/','SQL'); -- My/SQL
select concat_ws('/','My','SQL'); --My/SQL

select concat_ws('/', orderno, memid)  from order_h; -- 202201001/seo

-- cast(), convert() 함수 : 두번째 인수로 지정한 데이터 유형으로 변경
select cast(123 as char(5)); -- 123
select cast(orddt as char(7)) from order_h where orderno = '202201001'; -- 2022-01

-- select convert(orddt, as char(7)) from order_h where orderno = '202201001'; 오류남;

-- lpad(), rpad() 함수
select lpad('mysqldb', 10,'@'); -- @@@mysqldb
select rpad('mysqldb',10, '!@'); -- mysqldb!@!

-- insert()함수 
select insert('mysqldb은 오라클에 인수되었다.', 3,8,'DB는'); -- myDB는라클에 인수되었다

-- replace() 함수, 대소문자구분,찾는문자열이 없을땐 첫번째 인수값 그대로 반환
select replace('이것은 MySQL', '이것은','This is'); -- This is MySQL
-- 첫번째 인수

