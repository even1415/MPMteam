ALTER TABLE MUSIC
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_MUSIC;

/* ���� */
DROP TABLE MUSIC 
	CASCADE CONSTRAINTS;

/* ���� */
CREATE TABLE MUSIC (
	MIDX NUMBER(8) NOT NULL, /* ������ȣ */
	MTITLE VARCHAR2(50) NOT NULL, /* ����Ÿ��Ʋ */
	MCOMENT VARCHAR2(200), /* �����ڸ�Ʈ */
	Mlyrics VARCHAR2(4000), /* �������� */
	MDATE DATE NOT NULL, /* ��������� */
	MREADNUM NUMBER(8) NOT NULL, /* ������ȸ�� */
	FILENAME VARCHAR2(1000) NOT NULL, /* ÷������ */
	FILESIZE NUMBER(12) NOT NULL, /* ����ũ�� */
	PLAYTIME NUMBER(8) NOT NULL /* ����ð� */
);

COMMENT ON TABLE MUSIC IS '����';

COMMENT ON COLUMN MUSIC.MIDX IS '������ȣ';

COMMENT ON COLUMN MUSIC.MTITLE IS '����Ÿ��Ʋ';

COMMENT ON COLUMN MUSIC.MCOMENT IS '�����ڸ�Ʈ';

COMMENT ON COLUMN MUSIC.Mlyrics IS '��������';

COMMENT ON COLUMN MUSIC.MDATE IS '���������';

COMMENT ON COLUMN MUSIC.MREADNUM IS '������ȸ��';

COMMENT ON COLUMN MUSIC.FILENAME IS '÷������';

COMMENT ON COLUMN MUSIC.FILESIZE IS '����ũ��';

COMMENT ON COLUMN MUSIC.PLAYTIME IS '����ð�';

CREATE UNIQUE INDEX PK_MUSIC
	ON MUSIC (
		MIDX ASC
	);

ALTER TABLE MUSIC
	ADD
		CONSTRAINT PK_MUSIC
		PRIMARY KEY (
			MIDX
		);