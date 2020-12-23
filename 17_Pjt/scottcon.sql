-- table 생성
CREATE TABLE book (
    book_id NUMBER(4),
    book_name VARCHAR2(20),
    book_loc VARCHAR2(20)
    );
    
-- 테이블 검색
SELECT * FROM tab;

-- 테이블 삭제
DROP TABLE book;

-- table 생성 - 제약조건
CREATE TABLE book (
    book_id NUMBER(4) CONSTRAINT book_id_pk PRIMARY KEY,
    book_name VARCHAR2(20),
    book_loc VARCHAR2(20)
    );
    
COMMIT;



-- 시퀀스 생성
CREATE SEQUENCE book_seq;

-- 시퀀스 삭제
DROP SEQUENCE book_seq;

-- 데이터 추가
INSERT INTO
    book(book_id, book_name, book_loc)
VALUES
    (BOOK_SEQ.NEXTVAL, 'book1', '001-00001');
    
INSERT INTO
    book(book_id, book_name, book_loc)
VALUES
    (BOOK_SEQ.NEXTVAL, 'book2', '001-00002');

-- 데이터 수정
UPDATE book SET book_loc = '001-00099'
WHERE book_name = 'book1';

UPDATE book SET book_loc = '005-00005'
WHERE book_name = 'book2';

-- 데이터 삭제
DELETE FROM book
WHERE book_id = 2;

INSERT INTO
    book(book_id, book_name, book_loc)
VALUES
    (BOOK_SEQ.NEXTVAL, 'book2', '003-00044');
    
INSERT INTO
    book(book_id, book_name, book_loc)
VALUES
    (BOOK_SEQ.NEXTVAL, 'book5', '003-00055');
    


-- 데이터 검색
SELECT * FROM book;

SELECT book_name, book_loc FROM book;

SELECT book_name AS 책이름, book_loc AS 책위치 FROM book;

-- 조건 - WHERE
SELECT * FROM book WHERE book_id > 3;
SELECT * FROM book WHERE book_id > 3 AND book_id <= 5;

-- 조건 - BETWEEN AND
SELECT * FROM book WHERE book_id BETWEEN 2 AND 4;

-- 조건 - LIKE
SELECT * FROM book WHERE book_id LIKE 3;
SELECT * FROM book WHERE book_loc LIKE '%3';
SELECT * FROM book WHERE book_name LIKE 'book%';
SELECT * FROM book WHERE book_name LIKE '%ok%';

-- 정렬
SELECT * FROM book ORDER BY book_id ASC;
SELECT * FROM book ORDER BY book_id DESC;

SELECT * FROM book ORDER BY book_name ASC;
SELECT * FROM book ORDER BY book_name DESC;

COMMIT;









