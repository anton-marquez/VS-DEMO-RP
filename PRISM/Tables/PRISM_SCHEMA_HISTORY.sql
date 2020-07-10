CREATE TABLE prism.prism_schema_history (
  "RANK" NUMBER,
  "VERSION" VARCHAR2(20 BYTE) NOT NULL,
  description VARCHAR2(100 BYTE),
  script_name VARCHAR2(100 BYTE),
  installed_by VARCHAR2(50 BYTE),
  installed_date DATE,
  CONSTRAINT prism_schema_history_pk PRIMARY KEY ("VERSION")
);