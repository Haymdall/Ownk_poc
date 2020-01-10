DROP TABLE GE_TRGLA;

CREATE TABLE GE_TRGLA
(
RGLA_RGLA     VARCHAR2(150 BYTE) CONSTRAINT NN_GE_TRGLA_REGLA NOT NULL,
RGLA_ESTA     VARCHAR2(2 BYTE) CONSTRAINT NN_GE_TRGLA_ESTA NOT NULL,
RGLA_NICK     VARCHAR2(50 BYTE) CONSTRAINT NN_GE_TRGLA_NICK NOT NULL
)
TABLESPACE TS_DOWNK
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING
;

ALTER TABLE GE_TRGLA ADD (
CONSTRAINT PK_RGLA_RGLA PRIMARY KEY (RGLA_RGLA)
USING INDEX
TABLESPACE TS_DOWNK);


COMMENT ON TABLE GE_TRGLA IS 'TABLA REGLAS';
COMMENT ON COLUMN GE_TRGLA.RGLA_RGLA IS 'IDENTIFICADOR DE LA TABLA';
COMMENT ON COLUMN GE_TRGLA.RGLA_ESTA IS 'ESTADO DEL USUARIO';
COMMENT ON COLUMN GE_TRGLA.RGLA_NICK IS 'ALIAS DEL USUARIO' ;