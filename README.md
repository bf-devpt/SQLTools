# SQLTools



📁 A collection of handy SQL Server scripts for database administration, analysis, and troubleshooting.

This repository contains SQL tools to assist with tasks such as:

- 🔍 Finding objects that contain specific keywords in their definitions
- 🚦 Monitoring currently running queries
  
---

## 📜 Available Scripts

### 🔍 `find_objects_with_text.sql`

This script searches for database objects (procedures, views, triggers, functions, etc.) that contain a specific keyword in their source code.

### 🚦 `running_queries.sql`
This script lists all currently running queries on the SQL Server and useful information such as execution time, session ID, login name, and the SQL command itself.

---

## 🛠 Requirements
SQL Server 2012 or later

Sufficient permissions to access system views (sys.objects, sys.sql_modules, sys.dm_exec_requests, etc.)



## 📂 Repository Structure

- `find_objects_with_text.sql` – Search for object definitions containing keywords  
- `running_queries.sql` – Monitor active SQL queries in real time![image](https://github.com/user-attachments/assets/906c955d-a583-44c0-a543-004866aac73c)
