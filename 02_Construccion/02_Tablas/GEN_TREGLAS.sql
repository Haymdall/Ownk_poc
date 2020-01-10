CREATE TABLE GEN_TREGLAS
(
REGLAS_ESTADO   VARCHAR2(2) CONSTRAINT NN_GEN_TREGLAS_ESTADO NOT NULL,
REGLAS_NICK     VARCHAR2(50) CONSTRAINT NN_GEN_TREGLAS_NICK NOT NULL
)
TABLESPACE 
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING
;

COMMENT ON TABLE GEN_TREGLAS IS 'TABLA REGLAS';
COMMENT ON COLUMN GEN_TREGLAS.REGLAS_ESTADO IS 'ESTADO DEL USUARIO';
COMMENT ON COLUMN GEN_TREGLAS.REGLAS_NICK IS 'ALIAS DEL USUARIO' ;