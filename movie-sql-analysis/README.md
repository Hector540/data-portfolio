# SQL Movie Database Analysis

This project uses SQL to explore and analyze a movie database. The goal is to write queries that answer business-style questions using filtering, grouping, sorting, and joins.

---

## Skills Demonstrated
- SQL Query Writing
- Data Filtering and Sorting (`WHERE`, `ORDER BY`)
- Aggregation (`GROUP BY`, `COUNT`, `SUM`, `AVG`)
- Table Joins
- Data Exploration

---

## Example Questions Answered
- What are the top-rated movies?
- How many movies were released by genre?
- Which year had the most movie releases?
- Who are the most frequent directors?
- What is the average rating by genre?

---

## Files
| File Name | Description |
|------------|-------------|
| `movies.sql` | SQL queries used in this project |
| `movies_sample_data.sql` | Mock dataset used |

---

## Database Structure
The database includes:
- `movies` table (movie_id, title, genre, release_year, rating, director_id)
- `directors` table (director_id, director_name)

---

## Tools Used
SQL (MySQL/PostgreSQL syntax)

---

## How to Run This Project

You can run this project using any SQL environment such as:

- MySQL Workbench
- PostgreSQL
- SQLite
- SQL Server
- DBeaver
- DB Fiddle (online)
- SQL Fiddle (online)

### Steps:
1. Copy and run the code in `movies_sample_data.sql` to create and populate the database.
2. Run the queries in `movies.sql` to analyze the data.

---

## Sample Query Results

### Most common genre:
```sql
SELECT genre, COUNT(*) AS total_movies
FROM movies
GROUP BY genre
ORDER BY total_movies DESC;
