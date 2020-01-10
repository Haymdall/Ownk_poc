--
PROMPT
PROMPT CREANDO TABLA GE_TESTA
PROMPT
--
CREATE TABLE GE_TESTA
(
    ESTA_ESTA   VARCHAR2(100)           CONSTRAINT NN_GE_TESTA_ESTA NOT NULL,
    ESTA_DESC   VARCHAR2(50)            CONSTRAINT NN_GE_TESTA_DESC NOT NULL
    
);

COMMENT ON TABLE    GE_TESTA    IS 'Tabla de estados';
COMMENT ON COLUMN   GE_TESTA.ESTA_ESTA  IS 'Identificador del estado';
COMMENT ON COLUMN   GE_TESTA.ESTA_DESC  IS 'Descripcion del estado'; 
