CREATE TABLE F_OS_INFO  (
   OS_ID                VARCHAR2(20)                    NOT NULL,
   OS_NAME              VARCHAR2(200)                   NOT NULL,
   OS_URL               VARCHAR2(200),
   DDE_SYNC_URL         VARCHAR2(200),
   SYS_DATA_PUSH_OPTION VARCHAR2(200),
   LOGIN_USER_NAME      VARCHAR2(64),
   LOGIN_USER_PASSWORD  VARCHAR2(64),
   LAST_MODIFY_DATE     DATE,
   CREATE_TIME          DATE,
   CREATED              VARCHAR2(8),
  PRIMARY KEY (OS_ID)
);
CREATE TABLE F_DATABASE_INFO  (
   DATABASE_CODE      VARCHAR2(32)                    NOT NULL,
   DATABASE_NAME      VARCHAR2(100),
 OS_ID                VARCHAR2(20),
   DATABASE_URL       VARCHAR2(1000),
   USERNAME           VARCHAR2(100),
   PASSWORD           VARCHAR2(100),
   DATABASE_DESC      VARCHAR2(500),
   LAST_MODIFY_DATE   DATE,
   CREATE_TIME        DATE,
   CREATED            VARCHAR2(8),
 PRIMARY KEY (DATABASE_CODE)
);

insert into F_OptInfo (OPT_ID, OPT_NAME, PRE_OPT_ID, OPT_ROUTE, OPT_URL, FORM_CODE, OPT_TYPE, MSG_NO, MSG_PRM, IS_IN_TOOLBAR, IMG_INDEX, TOP_OPT_ID, ORDER_IND, FLOW_CODE, PAGE_TYPE, ICON, HEIGHT, WIDTH, UPDATE_DATE, CREATE_DATE,CREATOR,UPDATOR)
values ('OS_INFO', '集成业务系统', 'SYS_CONFIG', 'modules/sys/osinfo/osinfo.html', '/system/sys/os', null, 'O', null, null, 'Y', null, null, null, null, 'D', 'icon-base icon-base-gear', null, null, null, null,'u0000000','u0000000');
insert into F_OptInfo (OPT_ID, OPT_NAME, PRE_OPT_ID, OPT_ROUTE, OPT_URL, FORM_CODE, OPT_TYPE, MSG_NO, MSG_PRM, IS_IN_TOOLBAR, IMG_INDEX, TOP_OPT_ID, ORDER_IND, FLOW_CODE, PAGE_TYPE, ICON, HEIGHT, WIDTH, UPDATE_DATE, CREATE_DATE,CREATOR,UPDATOR)
values ('DATABASE', '集成数据库', 'SYS_CONFIG', 'modules/sys/databaseinfo/databaseinfo.html', '/system/sys/databaseinfo', null, 'O', null, null, 'Y', null, null, null, null, 'D', null, null, null, sysdate, null,'u0000000','u0000000');

insert into F_OPTDEF (OPT_CODE, OPT_ID, OPT_NAME, OPT_METHOD, OPT_DESC, IS_IN_WORKFLOW, UPDATE_DATE, CREATE_DATE, OPT_URL, OPT_REQ,CREATOR,UPDATOR)
values ('1000101', 'OS_INFO', '所有权限', 'ALL', '更新机构状态', 'F', sysdate, null, '/*', 'CRUD','u0000000','u0000000');
insert into F_OPTDEF (OPT_CODE, OPT_ID, OPT_NAME, OPT_METHOD, OPT_DESC, IS_IN_WORKFLOW, UPDATE_DATE, CREATE_DATE, OPT_URL, OPT_REQ,CREATOR,UPDATOR)
values ('1000102', 'DATABASE', '所有权限','ALL', null, null, null, null, '/×', 'CRUD','u0000000','u0000000');

insert into F_ROLEPOWER (ROLE_CODE, OPT_CODE, UPDATE_DATE, CREATE_DATE, OPT_SCOPE_CODES,CREATOR,UPDATOR)
  values('sysadmin','1000101',sysdate,sysdate,null,'u0000000','u0000000');
insert into F_ROLEPOWER (ROLE_CODE, OPT_CODE, UPDATE_DATE, CREATE_DATE, OPT_SCOPE_CODES,CREATOR,UPDATOR)
  values('sysadmin','1000102',sysdate,sysdate,null,'u0000000','u0000000');

create sequence S_DATABASECODE;
