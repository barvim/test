# Test

This test project is ansible role which will install ***absence-control*** web-application on 
**Ubuntu 16.04.** and do configure it.

Created during test ececution for 
[**Russian central bank**](https://www.cbr.ru/)

# Features
It was developed on Ubuntu 16.04. (xenial ) by default. 
All tasks implemented via set of roles.  Role's behavior assumes one of two ways:
1. Initial service configuration
2. Build and deploy web-application, then start it

# Variables
| **Name**                   | **Default** | **Description**                       |
|:---------------------------|:------------|:--------------------------------------|
|java_home_path      |             |Path to Java home                 |
|pg_user         |pguser             |PostgreSQL user to app DB connection                    |
|pg_password|pgpassword       |pg_user's pass   |
|pg_port|5432        |PostgreSQL running port|
|FASTDEPLOY         | False            |flag variable is true when we do fast deploy                    |


# Tags
Use --tags [Tagname] to enable/disable parts of tasks. On default all tasks are enabled, 
but if you used at least one tag, then unicluded tagged tasks will be disabled.

| **Tagname**       | **Description**                      |
|:------------------|:-------------------------------------|
| **update**        | Enable updating of all apt repository|
|**deploy**|Enable deploy role tasks    |
|**jdk**|Enable jdk role tasks    |
|**tomcat**|Enable tomcat role tasks    |
|**maven**|Enable maven role tasks    |
|**postgre**|Enable postgre role tasks    |


# Running test task
Use **test.sh** shell script or run **"sudo ansible-playbook ./test.yml"** from test 
directory. It needs to add target host records to inventory (Inventory/hosts) 
before execution.
Also, you can use **test_fastdeploy.sh** shell script to simple deploying prebuilded web-archive

# Author
(C) Rinat Ametov


