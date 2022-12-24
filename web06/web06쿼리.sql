USE mysql;

SELECT USER, HOST FROM USER; 

CREATE DATABASE web06_db;



GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY '12345';

GRANT ALL PRIVILEGES ON web06_db.* TO web06@'%' IDENTIFIED BY '12345';


SELECT VERSION()


CREATE USER 'web06'@'%' IDENTIFIED BY '12345'
CREATE USER 'web06'@'localhost' IDENTIFIED BY '12345'



GRANT ALL PRIVILEGES ON web06_db.* TO 'web06'@'%';


USE web06_db;

CREATE TABLE web06_user ( -- excel sheet 명은 web06_user
	-- excel 의 column 명을 정의하는 곳
	user_no INT,
	user_name VARCHAR(50),  -- 50자의 가변 문자열
	user_pwd VARCHAR(50),
	insertDate DATETIME DEFAULT current_timestamp
);

SHOW TABLES;

DESC web06_user;

SELECT * 
	FROM web06_user;
	
-- 데이터 입력
INSERT INTO web06_user
(
	user_no,
	user_name,
	user_pwd
) VALUES
(
	1,
	'test',
	'12345'
);

-- 데이터 입력
INSERT INTO web06_user
(
	user_no,
	user_name,
	user_pwd
) VALUES
(
	2,
	'test2',
	'12345'
);

-- 데이터 입력
INSERT INTO web06_user
(
	user_no,
	user_name,
	user_pwd
) VALUES
(
	3,
	'test3',
	'12345'
);

-- 데이터 입력
INSERT INTO web06_user
(
	user_no,
	user_name,
	user_pwd
) VALUES
(
	4,
	'web06',
	'12345'
);
	
	
-- 데이터 입력
INSERT INTO web06_user
(
	user_name,
	user_pwd
) VALUES
(
	'test',
	'12345'
);
		
	

	
SELECT * FROM web06_user;	

-- user_no를 사용자 키로 변경 (입력하지 않아도 자동으로 +1 해줄수 있게 변경)
-- AUTO_INCREMENT
-- 테이블 수정은 ALTER 라는 키워드를 사용합니다.

ALTER TABLE web06_user MODIFY user_no INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

DESC web06_user;