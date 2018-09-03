-- ȸ��
DROP TABLE IF EXISTS ST_MEMB RESTRICT;

-- ���̾
DROP TABLE IF EXISTS ST_DIAR RESTRICT;

-- ��ȭ��ȣ
DROP TABLE IF EXISTS ST_TEL RESTRICT;

-- ȸ��
CREATE TABLE ST_MEMB (
    MNO   INTEGER      NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
    ID    VARCHAR(50)  NOT NULL COMMENT '���̵�', -- ���̵�
    EMAIL VARCHAR(40)  NOT NULL COMMENT '�̸���', -- �̸���
    PWD   VARCHAR(100) NOT NULL COMMENT '��ȣ', -- ��ȣ
    MPT   VARCHAR(255) NULL     COMMENT '����' -- ����
)
COMMENT 'ȸ��';

-- ȸ��
ALTER TABLE ST_MEMB
    ADD CONSTRAINT PK_ST_MEMB -- ȸ�� �⺻Ű
        PRIMARY KEY (
            MNO -- ȸ����ȣ
        );

-- ȸ�� ����ũ �ε���
CREATE UNIQUE INDEX UIX_ST_MEMB
    ON ST_MEMB ( -- ȸ��
        ID ASC -- ���̵�
    );

ALTER TABLE ST_MEMB
    MODIFY COLUMN MNO INTEGER NOT NULL AUTO_INCREMENT COMMENT 'ȸ����ȣ';

-- ���̾
CREATE TABLE ST_DIAR (
    DNO  INTEGER      NOT NULL COMMENT '���̾��ȣ', -- ���̾��ȣ
    MNO  INTEGER      NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
    DDAY DATE         NOT NULL COMMENT '��¥', -- ��¥
    DTIT VARCHAR(255) NOT NULL COMMENT '����', -- ����
    DCON VARCHAR(255) NOT NULL COMMENT '����' -- ����
)
COMMENT '���̾';

-- ���̾
ALTER TABLE ST_DIAR
    ADD CONSTRAINT PK_ST_DIAR -- ���̾ �⺻Ű
        PRIMARY KEY (
            DNO -- ���̾��ȣ
        );

ALTER TABLE ST_DIAR
    MODIFY COLUMN DNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '���̾��ȣ';

-- ��ȭ��ȣ
CREATE TABLE ST_TEL (
    TELNO INTEGER      NOT NULL COMMENT '��ȭ��ȣ��ȣ', -- ��ȭ��ȣ��ȣ
    MNO   INTEGER      NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
    NAME  VARCHAR(50)  NOT NULL COMMENT '�̸�', -- �̸�
    MTEL  VARCHAR(30)  NOT NULL COMMENT '�޴���ȭ', -- �޴���ȭ
    FAX   VARCHAR(30)  NULL     COMMENT '�ѽ�', -- �ѽ�
    EMAIL VARCHAR(40)  NULL     COMMENT '�̸���', -- �̸���
    TPT   VARCHAR(255) NULL     COMMENT '����' -- ����
)
COMMENT '��ȭ��ȣ';

-- ��ȭ��ȣ
ALTER TABLE ST_TEL
    ADD CONSTRAINT PK_ST_TEL -- ��ȭ��ȣ �⺻Ű
        PRIMARY KEY (
            TELNO -- ��ȭ��ȣ��ȣ
        );

ALTER TABLE ST_TEL
    MODIFY COLUMN TELNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '��ȭ��ȣ��ȣ';

-- ���̾
ALTER TABLE ST_DIAR
    ADD CONSTRAINT FK_ST_MEMB_TO_ST_DIAR -- ȸ�� -> ���̾
        FOREIGN KEY (
            MNO -- ȸ����ȣ
        )
        REFERENCES ST_MEMB ( -- ȸ��
            MNO -- ȸ����ȣ
        );

-- ��ȭ��ȣ
ALTER TABLE ST_TEL
    ADD CONSTRAINT FK_ST_MEMB_TO_ST_TEL -- ȸ�� -> ��ȭ��ȣ
        FOREIGN KEY (
            MNO -- ȸ����ȣ
        )
        REFERENCES ST_MEMB ( -- ȸ��
            MNO -- ȸ����ȣ
        );