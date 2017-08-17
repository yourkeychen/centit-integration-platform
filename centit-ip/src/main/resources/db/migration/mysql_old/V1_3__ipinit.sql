-- ����ű� Ŀǰֻ�����ű�

CREATE TABLE F_OS_INFO  (
   OS_ID                VARCHAR(20)                    NOT NULL,
   OS_NAME              VARCHAR(200)                   NOT NULL,
   OS_URL               VARCHAR(200),
   DDE_SYNC_URL         VARCHAR(200),
   SYS_DATA_PUSH_OPTION VARCHAR(200),
   LAST_MODIFY_DATE   DATE,
   CREATE_TIME        DATE,
   CREATED            VARCHAR(8),
  PRIMARY KEY (OS_ID)
);


CREATE TABLE F_DATABASE_INFO  (
   DATABASE_CODE      VARCHAR(32)                    NOT NULL,
   DATABASE_NAME      VARCHAR(100),
   OS_ID                VARCHAR(20),
   DATABASE_URL       VARCHAR(1000),
   USERNAME           VARCHAR(100),
   PASSWORD           VARCHAR(100),
   DATABASE_DESC      VARCHAR(500),
   LAST_MODIFY_DATE   DATE,
   CREATE_TIME        DATE,
   CREATED            VARCHAR(8),
 PRIMARY KEY (DATABASE_CODE)
);

ALTER TABLE F_DATABASE_INFO
   ADD CONSTRAINT FK_D_DATABA_REFERENCE_F_OS_INF FOREIGN KEY (OS_ID)
      REFERENCES F_OS_INFO (OS_ID);
