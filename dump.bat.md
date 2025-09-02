# Windows Batch Script Documentation

This document explains how to use the `dump.bat` script to export a PostgreSQL database to a CSV file on Windows.

## Prerequisites

- Windows OS
- PostgreSQL installed
- `pg_dump` available in PATH

## Usage

1. Open Command Prompt.
2. Navigate to the folder containing `dump.bat`.
3. Run the script:
   ```
   dump.bat <database_name> <output_file.csv>
   ```

```

## Parameters
- `<database_name>`: Name of the PostgreSQL database to export.
- `<output_file.csv>`: Path to the output CSV file.

## Example
```

dump.bat mydb export.csv

```

## Notes
- Ensure you have the necessary permissions to access the database.
- The script may prompt for database credentials.
```
