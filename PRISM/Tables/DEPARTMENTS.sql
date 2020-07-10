CREATE TABLE prism.departments (
  department_id NUMBER(4) NOT NULL,
  department_name VARCHAR2(30 BYTE) NOT NULL,
  manager_id NUMBER(6),
  location_id NUMBER(4),
  CONSTRAINT dept_id_pk PRIMARY KEY (department_id) USING INDEX prism.dept_id_pkx,
  CONSTRAINT dept_loc_fk FOREIGN KEY (location_id) REFERENCES prism.locations (location_id),
  CONSTRAINT dept_mgr_fk FOREIGN KEY (manager_id) REFERENCES prism.employees (employee_id)
);
COMMENT ON COLUMN prism.departments.department_id IS 'Primary key column of departments table.';
COMMENT ON COLUMN prism.departments.department_name IS 'A not null column that shows name of a department. Administration,
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public
Relations, Sales, Finance, and Accounting. ';
COMMENT ON COLUMN prism.departments.manager_id IS 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
COMMENT ON COLUMN prism.departments.location_id IS 'Location id where a department is located. Foreign key to location_id column of locations table.';