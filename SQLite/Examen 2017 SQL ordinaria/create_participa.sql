CREATE TABLE PARTICIPA (
       ANYO DATE NOT NULL REFERENCES OLIMPIADA(ANYO),
       COD_DEPORTISTA NUMERIC NOT NULL REFERENCES DEPORTISTA(COD_DEPORTISTA) ON DELETE CASCADE,
       NUM_MEDALLAS NUMERIC DEFAULT 0,
       NUM_PRUEBAS_DISPUTADAS NUMERIC,
       PRIMARY KEY(ANYO, COD_DEPORTISTA)
);

-- Activate PRAGMA foreign_keys = ON; for cascade deletion