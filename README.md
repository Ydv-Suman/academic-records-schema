# University Database

A relational database schema for managing **students, courses, sections, grades, and prerequisites** in a university system.  
This project includes the schema definition, constraints, and sample data inserts.

## 📂 Files
- `university_db.sql` – contains table definitions, constraints, and sample data.

## 🗄️ Database Schema
The database includes the following tables:
- **STUDENT** – stores student details (name, number, class, major).
- **COURSE** – stores course details (name, number, credit hours, department).
- **SECTION** – stores course offerings by semester, year, and instructor.
- **GRADE_REPORT** – stores grades for students in course sections.
- **PREREQUISITE** – stores prerequisite relationships between courses.

## 🔑 Features
- Primary and foreign key constraints for data integrity.
- Sample data for quick testing.
- Relationships modeled for academic record-keeping.

## ▶️ Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/university-database.git
   cd university-database