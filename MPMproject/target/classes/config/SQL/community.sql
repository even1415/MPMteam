ALTER TABLE COMMUNITY
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_COMMUNITY;

/* Ŀ�´�Ƽ */
DROP TABLE COMMUNITY 
	CASCADE CONSTRAINTS;

/* Ŀ�´�Ƽ */
CREATE TABLE COMMUNITY (
	CT_IDX NUMBER(8) NOT NULL, /* Ŀ�´�Ƽ��ȣ */
	CT_TITLE VARCHAR2(50) NOT NULL, /* Ŀ�´�Ƽ���� */
	CT_WRITER VARCHAR2(50) NOT NULL, /* Ŀ�´�Ƽ�ۼ��� */
	CT_CONTENT VARCHAR2(500), /* Ŀ�´�Ƽ���� */
	CT_READNUM NUMBER(12) NOT NULL, /* Ŀ�´�Ƽ��ȸ�� */
	CT_DATE DATE NOT NULL /* Ŀ�´�Ƽ����� */
);

COMMENT ON TABLE COMMUNITY IS 'Ŀ�´�Ƽ';

COMMENT ON COLUMN COMMUNITY.CT_IDX IS 'Ŀ�´�Ƽ��ȣ';

COMMENT ON COLUMN COMMUNITY.CT_TITLE IS 'Ŀ�´�Ƽ����';

COMMENT ON COLUMN COMMUNITY.CT_WRITER IS 'Ŀ�´�Ƽ�ۼ���';

COMMENT ON COLUMN COMMUNITY.CT_CONTENT IS 'Ŀ�´�Ƽ����';

COMMENT ON COLUMN COMMUNITY.CT_READNUM IS 'Ŀ�´�Ƽ��ȸ��';

COMMENT ON COLUMN COMMUNITY.CT_DATE IS 'Ŀ�´�Ƽ�����';

CREATE UNIQUE INDEX PK_COMMUNITY
	ON COMMUNITY (
		CT_IDX ASC
	);

ALTER TABLE COMMUNITY
	ADD
		CONSTRAINT PK_COMMUNITY
		PRIMARY KEY (
			CT_IDX
		);