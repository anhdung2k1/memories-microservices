--------------------------------------------------------
--  File created - Wednesday-March-15-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence NOTIFICATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMORIES"."NOTIFICATIONS_SEQ"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PHOTOINPOSTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMORIES"."PHOTOINPOSTS_SEQ"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence POSTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMORIES"."POSTS_SEQ"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REACTIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMORIES"."REACTIONS_SEQ"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ROLE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMORIES"."ROLE_SEQ"  MINVALUE 0 MAXVALUE 100 INCREMENT BY 1 START WITH 40 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMORIES"."USER_SEQ"  MINVALUE 0 MAXVALUE 100 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ACCOUNTS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."ACCOUNTS" 
   (	"ACC_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_AT" DATE, 
	"EMAIL" VARCHAR2(255 CHAR), 
	"HASH_PASS" VARCHAR2(255 CHAR), 
	"IS_ARCHIEVED" NUMBER(10,0), 
	"USER_NAME" VARCHAR2(255 CHAR), 
	"PHONE_NUM" NUMBER(19,0), 
	"UPDATE_AT" DATE, 
	"ROLE_ID" NUMBER(19,0), 
	"USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ACC_ROLES
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."ACC_ROLES" 
   (	"ROLE_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_AT" TIMESTAMP (6), 
	"ROLE_NAME" VARCHAR2(255 CHAR), 
	"UPDATE_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHAT_MESSAGE
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."CHAT_MESSAGE" 
   (	"MESS_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CONTENT" VARCHAR2(255 CHAR), 
	"CREATE_AT" TIMESTAMP (6), 
	"SENDER" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."COMMENTS" 
   (	"CMT_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CMT_CONTENT" VARCHAR2(255 CHAR), 
	"CREATE_AT" TIMESTAMP (6), 
	"IS_ARCHIEVED" NUMBER(10,0), 
	"REPLY_TO" NUMBER(19,0), 
	"UPDATE_AT" TIMESTAMP (6), 
	"POST_ID" NUMBER(19,0), 
	"USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FRIENDRECOMMEND
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."FRIENDRECOMMEND" 
   (	"CREATE_AT" TIMESTAMP (6), 
	"UPDATE_AT" TIMESTAMP (6), 
	"USER1_ID" NUMBER(19,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FRIENDREQUEST
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."FRIENDREQUEST" 
   (	"REQ_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_AT" TIMESTAMP (6), 
	"IS_ACCEPTED" NUMBER(10,0), 
	"IS_ARCHIEVED" NUMBER(10,0), 
	"UPDATE_AT" TIMESTAMP (6), 
	"RECEIVE_USER_ID" NUMBER(19,0), 
	"SEND_USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTIFICATIONS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."NOTIFICATIONS" 
   (	"NOTI_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_AT" TIMESTAMP (6), 
	"IS_POPULAR" NUMBER(10,0), 
	"IS_SEEN" NUMBER(10,0), 
	"NOTI_TYPE" NUMBER(19,0), 
	"UPDATE_AT" TIMESTAMP (6), 
	"POST_ID" NUMBER(19,0), 
	"USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHOTOINPOSTS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."PHOTOINPOSTS" 
   (	"PHOTO_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_AT" TIMESTAMP (6), 
	"IS_HIGHLIGHT" NUMBER(10,0), 
	"PHOTO_URL" CLOB, 
	"UPDATE_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  NO INMEMORY ("PHOTO_URL") 
 LOB ("PHOTO_URL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table POSTS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."POSTS" 
   (	"POST_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"POST_CONTENT" VARCHAR2(2550 CHAR), 
	"CREATE_AT" TIMESTAMP (6), 
	"IS_ARCHIEVED" NUMBER(10,0), 
	"PERMISSION" VARCHAR2(255 CHAR), 
	"UPDATE_AT" TIMESTAMP (6), 
	"PHOTO_ID" NUMBER(19,0), 
	"USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REACTIONS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."REACTIONS" 
   (	"REACT_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_AT" TIMESTAMP (6), 
	"UPDATE_AT" TIMESTAMP (6), 
	"CMT_ID" NUMBER(19,0), 
	"POST_ID" NUMBER(19,0), 
	"USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEARCHRECENTS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."SEARCHRECENTS" 
   (	"SEARCH_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_AT" TIMESTAMP (6), 
	"KEYWORD" VARCHAR2(255 CHAR), 
	"UPDATE_AT" TIMESTAMP (6), 
	"USER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "MEMORIES"."USERS" 
   (	"USER_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"ADDRESS" VARCHAR2(255 CHAR), 
	"AVATAR_URL" CLOB, 
	"BIRTHDAY" DATE, 
	"COVER_URL" CLOB, 
	"CREATE_AT" TIMESTAMP (6), 
	"FOLLOWER" NUMBER(19,0), 
	"GENDER" VARCHAR2(255 CHAR), 
	"RELATIONSHIP" VARCHAR2(255 CHAR), 
	"UPDATE_AT" TIMESTAMP (6), 
	"USER_NAME" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  NO INMEMORY ("AVATAR_URL") 
  NO INMEMORY ("COVER_URL") 
 LOB ("AVATAR_URL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("COVER_URL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

--  DDL for Procedure DROP_ALL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "MEMORIES"."DROP_ALL" 
IS
BEGIN

FOR c IN (SELECT table_name FROM user_tables) LOOP
EXECUTE IMMEDIATE ('DROP TABLE "' || c.table_name || '" CASCADE CONSTRAINTS');
END LOOP;

FOR s IN (SELECT sequence_name FROM user_sequences) LOOP
EXECUTE IMMEDIATE ('DROP SEQUENCE ' || s.sequence_name);
END LOOP;

END;

/
--------------------------------------------------------
--  DDL for Procedure RESET_SEQ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "MEMORIES"."RESET_SEQ" ( p_seq_name in varchar2 )
is
    l_val number;
begin
    execute immediate
    'select ' || p_seq_name || '.nextval from dual' INTO l_val;

    execute immediate
    'alter sequence ' || p_seq_name || ' increment by -' || l_val || 
                                                          ' minvalue 0';

    execute immediate
    'select ' || p_seq_name || '.nextval from dual' INTO l_val;

    execute immediate
    'alter sequence ' || p_seq_name || ' increment by 1 minvalue 0';
end;

/
--------------------------------------------------------
--  Constraints for Table REACTIONS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."REACTIONS" MODIFY ("REACT_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."REACTIONS" ADD PRIMARY KEY ("REACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."COMMENTS" MODIFY ("CMT_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."COMMENTS" MODIFY ("CMT_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."COMMENTS" MODIFY ("IS_ARCHIEVED" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."COMMENTS" ADD PRIMARY KEY ("CMT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FRIENDRECOMMEND
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."FRIENDRECOMMEND" MODIFY ("USER1_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."FRIENDRECOMMEND" ADD PRIMARY KEY ("USER1_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."ACCOUNTS" MODIFY ("ACC_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."ACCOUNTS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."ACCOUNTS" MODIFY ("HASH_PASS" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."ACCOUNTS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."ACCOUNTS" ADD PRIMARY KEY ("ACC_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHOTOINPOSTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."PHOTOINPOSTS" MODIFY ("PHOTO_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."PHOTOINPOSTS" ADD PRIMARY KEY ("PHOTO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHAT_MESSAGE
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."CHAT_MESSAGE" MODIFY ("MESS_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."CHAT_MESSAGE" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."CHAT_MESSAGE" MODIFY ("CREATE_AT" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."CHAT_MESSAGE" ADD PRIMARY KEY ("MESS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MEMORIES"."CHAT_MESSAGE" MODIFY ("SENDER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEARCHRECENTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."SEARCHRECENTS" MODIFY ("SEARCH_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."SEARCHRECENTS" ADD PRIMARY KEY ("SEARCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."USERS" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTIFICATIONS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."NOTIFICATIONS" MODIFY ("NOTI_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."NOTIFICATIONS" ADD PRIMARY KEY ("NOTI_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ACC_ROLES
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."ACC_ROLES" MODIFY ("ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."ACC_ROLES" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."ACC_ROLES" ADD PRIMARY KEY ("ROLE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FRIENDREQUEST
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."FRIENDREQUEST" MODIFY ("REQ_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."FRIENDREQUEST" ADD PRIMARY KEY ("REQ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POSTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."POSTS" MODIFY ("POST_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."POSTS" MODIFY ("POST_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "MEMORIES"."POSTS" ADD PRIMARY KEY ("POST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."ACCOUNTS" ADD CONSTRAINT "FK2TET1V3CI84C5TVM73N9PGYUR" FOREIGN KEY ("ROLE_ID")
	  REFERENCES "MEMORIES"."ACC_ROLES" ("ROLE_ID") ENABLE;
  ALTER TABLE "MEMORIES"."ACCOUNTS" ADD CONSTRAINT "FKNJUOP33MO69PD79CTPLKCK40N" FOREIGN KEY ("USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."COMMENTS" ADD CONSTRAINT "FKH4C7LVSC298WHOYD4W9TA25CR" FOREIGN KEY ("POST_ID")
	  REFERENCES "MEMORIES"."POSTS" ("POST_ID") ENABLE;
  ALTER TABLE "MEMORIES"."COMMENTS" ADD CONSTRAINT "FK8OMQ0TC18JD43BU5TJH6JVRAQ" FOREIGN KEY ("USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FRIENDRECOMMEND
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."FRIENDRECOMMEND" ADD CONSTRAINT "FKOEI6H0OT7YL33ABNVS1RNM2JI" FOREIGN KEY ("USER1_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FRIENDREQUEST
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."FRIENDREQUEST" ADD CONSTRAINT "FK1T92KEG379KYF56NIUYSAG71P" FOREIGN KEY ("RECEIVE_USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "MEMORIES"."FRIENDREQUEST" ADD CONSTRAINT "FKGQF63G59CM752FARHM81O1RNN" FOREIGN KEY ("SEND_USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTIFICATIONS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."NOTIFICATIONS" ADD CONSTRAINT "FK599539LYM3MNKBQKS0U806EAC" FOREIGN KEY ("POST_ID")
	  REFERENCES "MEMORIES"."POSTS" ("POST_ID") ENABLE;
  ALTER TABLE "MEMORIES"."NOTIFICATIONS" ADD CONSTRAINT "FK9Y21ADHXN0AYJHFOCSCQOX7BH" FOREIGN KEY ("USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."POSTS" ADD CONSTRAINT "FK3CYUB79PY0WJLA47R6BNGIIDF" FOREIGN KEY ("PHOTO_ID")
	  REFERENCES "MEMORIES"."PHOTOINPOSTS" ("PHOTO_ID") ENABLE;
  ALTER TABLE "MEMORIES"."POSTS" ADD CONSTRAINT "FK5LIDM6CQBC7U4XHQPXM898QME" FOREIGN KEY ("USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTIONS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."REACTIONS" ADD CONSTRAINT "FKRGYV4BP7H3AUP5BCGXSB0O7HQ" FOREIGN KEY ("CMT_ID")
	  REFERENCES "MEMORIES"."COMMENTS" ("CMT_ID") ENABLE;
  ALTER TABLE "MEMORIES"."REACTIONS" ADD CONSTRAINT "FKH8B4H9WYBHU8TC5W11E8T3KRC" FOREIGN KEY ("POST_ID")
	  REFERENCES "MEMORIES"."POSTS" ("POST_ID") ENABLE;
  ALTER TABLE "MEMORIES"."REACTIONS" ADD CONSTRAINT "FKQMEWAIBCP5BXTLQXC2CAWHULN" FOREIGN KEY ("USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEARCHRECENTS
--------------------------------------------------------

  ALTER TABLE "MEMORIES"."SEARCHRECENTS" ADD CONSTRAINT "FKENDD2DLSMLNOSR3YIGVNYR396" FOREIGN KEY ("USER_ID")
	  REFERENCES "MEMORIES"."USERS" ("USER_ID") ENABLE;
