DROP TABLE "titles";

CREATE TABLE "titles" (
	"emp_title_id" VARCHAR(5) NOT NULL,
	"title" VARCHAR(20) NOT NULL,
	PRIMARY KEY ("emp_title_id")
);

SELECT * FROM "titles";

DROP TABLE "employees";

CREATE TABLE "employees" (
	"emp_no" INT NOT NULL,
	"emp_title_id" VARCHAR(5) NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR(15),
	"last_name" VARCHAR(16),
	"sex" VARCHAR(1) NOT NULL CHECK (sex in ('F','M')),
	"hire_date" DATE NOT NULL,
	FOREIGN KEY ("emp_title_id") REFERENCES "titles"("emp_title_id"),
	PRIMARY KEY ("emp_no")
);

SELECT * FROM "employees";

DROP TABLE "departments";

CREATE TABLE "departments" (
	"dept_no" VARCHAR(4) NOT NULL,
	"dept_name" VARCHAR(18) NOT NULL,
	PRIMARY KEY ("dept_no")
);
	
SELECT * FROM "departments"

DROP TABLE "dept_emp";

CREATE TABLE "dept_emp" (
	"emp_no" INT NOT NULL,
	"dept_no" VARCHAR(4) NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no")
);

SELECT * FROM "dept_emp";

DROP TABLE "dept_manager";

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR(4) NOT NULL,
	"emp_no" INT NOT NULL,
	FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);
	
SELECT * FROM "dept_manager";

DROP TABLE "salaries";

CREATE TABLE "salaries" (
	"emp_no" INT NOT NULL,
	"salary" INT NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);

SELECT * FROM "salaries";
