-- table ����
CREATE TABLE book (
    book_id NUMBER(4),
    book_name VARCHAR2(20),
    book_loc VARCHAR2(20)
    );
    
-- ���̺� �˻�
SELECT * FROM tab;

-- ���̺� ����
DROP TABLE book;

-- table ���� - ��������
CREATE TABLE book (
    book_id NUMBER(4) CONSTRAINT book_id_pk PRIMARY KEY,
    book_name VARCHAR2(20),
    book_loc VARCHAR2(20)
    );
    
COMMIT;



-- ������ ����
CREATE SEQUENCE book_seq;

-- ������ ����
DROP SEQUENCE book_seq;

-- ������ �߰�
INSERT INTO
    book(book_id, book_name, book_loc)
VALUES
    (BOOK_SEQ.NEXTVAL, 'book1', '001-00001');
    
INSERT INTO
    book(book_id, book_name, book_loc)
VALUES
    (BOOK_SEQ.NEXTVAL, 'book2', '001-00002');

-- ������ ����
UPDATE book SET book_loc = '001-00099'
WHERE book_name = 'book1';

UPDATE book SET book_loc = '005-00005'
WHERE book_name = 'book2';

-- ������ ����
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
    


-- ������ �˻�
SELECT * FROM book;

SELECT book_name, book_loc FROM book;

SELECT book_name AS å�̸�, book_loc AS å��ġ FROM book;

-- ���� - WHERE
SELECT * FROM book WHERE book_id > 3;
SELECT * FROM book WHERE book_id > 3 AND book_id <= 5;

-- ���� - BETWEEN AND
SELECT * FROM book WHERE book_id BETWEEN 2 AND 4;

-- ���� - LIKE
SELECT * FROM book WHERE book_id LIKE 3;
SELECT * FROM book WHERE book_loc LIKE '%3';
SELECT * FROM book WHERE book_name LIKE 'book%';
SELECT * FROM book WHERE book_name LIKE '%ok%';

-- ����
SELECT * FROM book ORDER BY book_id ASC;
SELECT * FROM book ORDER BY book_id DESC;

SELECT * FROM book ORDER BY book_name ASC;
SELECT * FROM book ORDER BY book_name DESC;

COMMIT;









