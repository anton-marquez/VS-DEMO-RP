CREATE TABLE prism.jobs (
  job_id VARCHAR2(10 BYTE) NOT NULL,
  job_title VARCHAR2(35 BYTE) NOT NULL,
  min_salary NUMBER(6),
  max_salary NUMBER(6),
  CONSTRAINT job_id_pk PRIMARY KEY (job_id) USING INDEX prism.job_id_pkx
);
COMMENT ON COLUMN prism.jobs.job_id IS 'Primary key of jobs table.';
COMMENT ON COLUMN prism.jobs.job_title IS 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
COMMENT ON COLUMN prism.jobs.min_salary IS 'Minimum salary for a job title.';
COMMENT ON COLUMN prism.jobs.max_salary IS 'Maximum salary for a job title';