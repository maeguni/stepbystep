-- 회원
DROP TABLE IF EXISTS ST_MEMB RESTRICT;

-- 다이어리
DROP TABLE IF EXISTS ST_DIAR RESTRICT;

-- 전화번호
DROP TABLE IF EXISTS ST_TEL RESTRICT;

-- 회원
CREATE TABLE ST_MEMB (
    MNO   INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
    ID    VARCHAR(50)  NOT NULL COMMENT '아이디', -- 아이디
    EMAIL VARCHAR(40)  NOT NULL COMMENT '이메일', -- 이메일
    PWD   VARCHAR(100) NOT NULL COMMENT '암호', -- 암호
    MPT   VARCHAR(255) NULL     COMMENT '사진' -- 사진
)
COMMENT '회원';

-- 회원
ALTER TABLE ST_MEMB
    ADD CONSTRAINT PK_ST_MEMB -- 회원 기본키
        PRIMARY KEY (
            MNO -- 회원번호
        );

-- 회원 유니크 인덱스
CREATE UNIQUE INDEX UIX_ST_MEMB
    ON ST_MEMB ( -- 회원
        ID ASC -- 아이디
    );

ALTER TABLE ST_MEMB
    MODIFY COLUMN MNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 다이어리
CREATE TABLE ST_DIAR (
    DNO  INTEGER      NOT NULL COMMENT '다이어리번호', -- 다이어리번호
    MNO  INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
    DDAY DATE         NOT NULL COMMENT '날짜', -- 날짜
    DTIT VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
    DCON VARCHAR(255) NOT NULL COMMENT '내용' -- 내용
)
COMMENT '다이어리';

-- 다이어리
ALTER TABLE ST_DIAR
    ADD CONSTRAINT PK_ST_DIAR -- 다이어리 기본키
        PRIMARY KEY (
            DNO -- 다이어리번호
        );

ALTER TABLE ST_DIAR
    MODIFY COLUMN DNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '다이어리번호';

-- 전화번호
CREATE TABLE ST_TEL (
    TELNO INTEGER      NOT NULL COMMENT '전화번호번호', -- 전화번호번호
    MNO   INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
    NAME  VARCHAR(50)  NOT NULL COMMENT '이름', -- 이름
    MTEL  VARCHAR(30)  NOT NULL COMMENT '휴대전화', -- 휴대전화
    FAX   VARCHAR(30)  NULL     COMMENT '팩스', -- 팩스
    EMAIL VARCHAR(40)  NULL     COMMENT '이메일', -- 이메일
    TPT   VARCHAR(255) NULL     COMMENT '사진' -- 사진
)
COMMENT '전화번호';

-- 전화번호
ALTER TABLE ST_TEL
    ADD CONSTRAINT PK_ST_TEL -- 전화번호 기본키
        PRIMARY KEY (
            TELNO -- 전화번호번호
        );

ALTER TABLE ST_TEL
    MODIFY COLUMN TELNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '전화번호번호';

-- 다이어리
ALTER TABLE ST_DIAR
    ADD CONSTRAINT FK_ST_MEMB_TO_ST_DIAR -- 회원 -> 다이어리
        FOREIGN KEY (
            MNO -- 회원번호
        )
        REFERENCES ST_MEMB ( -- 회원
            MNO -- 회원번호
        );

-- 전화번호
ALTER TABLE ST_TEL
    ADD CONSTRAINT FK_ST_MEMB_TO_ST_TEL -- 회원 -> 전화번호
        FOREIGN KEY (
            MNO -- 회원번호
        )
        REFERENCES ST_MEMB ( -- 회원
            MNO -- 회원번호
        );