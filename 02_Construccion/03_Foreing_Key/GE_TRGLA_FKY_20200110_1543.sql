ALTER TABLE GE_TRGLA ADD (
CONSTRAINT FK_GE_TRGLA_RGLA_ESTADO FOREIGN KEY(RGLA_NICK)
REFERENCES GE_TUSER(USER_USER));

ALTER TABLE GE_TRGLA ADD(
CONSTRAINT FK_GEN_TRGLA_RGLA_USUARIO FOREIGN KEY (RGLA_ESTA)
REFERENCES GE_TESTA(ESTA_ESTA));