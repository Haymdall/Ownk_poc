--
-- Primary Key Constraints for Table GE_TUSER
--
ALTER TABLE GE_TUSER ADD (
CONSTRAINT PK_GE_TUSER PRIMARY KEY (USER_USER)
USING INDEX
TABLESPACE TS_IOWNK);