# Unix Shell Script Documentation

This document explains how to use the `dump.sh` script to export a PostgreSQL database to a CSV file on Unix-based systems (macOS, Linux).

## Prerequisites

- macOS or Linux
- PostgreSQL installed
- `pg_dump` available in PATH
- Script has execute permissions (`chmod +x dump.sh`)

## Usage

1. Open Terminal.
2. Navigate to the folder containing `dump.sh`.
3. Run the script:
   ```
   ./dump.sh <database_name> <output_file.csv>
   ```

```

## Parameters
- `<database_name>`: Name of the PostgreSQL database to export.
- `<output_file.csv>`: Path to the output CSV file.

## Example
```

./dump.sh mydb export.csv

```

## Notes
- Ensure you have the necessary permissions to access the database.
- The script may prompt for database credentials.
```
