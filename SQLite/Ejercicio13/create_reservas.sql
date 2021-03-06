-- Activate PRAGMA foreign_keys = ON; for cascade deletion

DROP TABLE IF EXISTS RESERVAS;

CREATE TABLE RESERVAS(
       NUM_VUELO TEXT REFERENCES VUELOS(NUM_VUELO) ON DELETE CASCADE,
       FECHA_SALIDA DATE,
       PLAZAS_LIBRES NUMERIC,
       PRIMARY KEY (NUM_VUELO, FECHA_SALIDA)
);

INSERT INTO RESERVAS VALUES
("IB600"  ,"20/02/08", "46"),
("IB600"  ,"21/02/08", "80"),
("IB600"  ,"22/02/08", "91"),
("BA467"  ,"20/02/08", "32"),
("BA467"  ,"21/02/08", "49"),
("BA467"  ,"22/02/08", "79"),
("IB0640" ,"20/02/08", "15"),
("IB0640" ,"21/02/08", "21"),
("IB0640" ,"22/02/08", "39"),
("IB3709" ,"20/02/08", "60"),
("IB3709" ,"21/02/08", "72"),
("IB3709" ,"22/02/08", "85"),
("IB510"  ,"20/02/08", "19"),
("IB510"  ,"21/02/08", "31"),
("IB510"  ,"22/02/08", "40");
