# PostgreSQL Dump to CSV Scripts

This repository provides scripts to export a PostgreSQL database to a CSV file. Both Windows (Batch) and Unix (Shell) versions are included.

## Scripts

- `dump.bat` — Windows Batch script
- `dump.sh` — Unix Shell script (macOS, Linux)

---

## Windows Batch Script (`dump.bat`)

**Prerequisites:**

- Windows OS
- PostgreSQL installed
- `pg_dump` available in PATH

**Usage:**

1. Open Command Prompt.
2. Navigate to the folder containing `dump.bat`.
3. Run:
   ```
   dump.bat <database_name> <output_file.csv>
   ```

**Parameters:**

- `<database_name>`: Name of the PostgreSQL database to export.
- `<output_file.csv>`: Path to the output CSV file.

**Example:**

```
dump.bat mydb export.csv
```

**Notes:**

- Ensure you have the necessary permissions to access the database.
- The script may prompt for database credentials.

---

## Unix Shell Script (`dump.sh`)

**Prerequisites:**

- macOS or Linux
- PostgreSQL installed
- `pg_dump` available in PATH
- Script has execute permissions (`chmod +x dump.sh`)

**Usage:**

1. Open Terminal.
2. Navigate to the folder containing `dump.sh`.
3. Run:
   ```
   ./dump.sh <database_name> <output_file.csv>
   ```

**Parameters:**

- `<database_name>`: Name of the PostgreSQL database to export.
- `<output_file.csv>`: Path to the output CSV file.

**Example:**

```
./dump.sh mydb export.csv
```

**Notes:**

- Ensure you have the necessary permissions to access the database.
- The script may prompt for database credentials.

---

## License

MIT
