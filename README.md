# MySQL8 AutoStarter

A quick and simple tool for windows that automatically starts the MySQL 8.0 server if it's not already running. It provides a hassle-free way to ensure that your MySQL server is up and running without manual intervention.

## Way it works

- Checks if MySQL server is already running on the background.
- Starts MySQL server if it's not running and verifies the startup success.
- Provides an option to open MySQL Workbench 8.0 from the script.

## Prerequisites

- Administrative privileges
- MySQL 8.0

## Setup Guide [IMPORTANT]

1. Download the `start_mysql.bat` file from this repository.
2. Open the `start_mysql.bat` file in a text editor.
3. Modify the `WORKBENCHPATH` variable at the top of the script to point to the installation path of MySQL Workbench 8.0 on your system. Make sure the file exists at the specified path.
4. Save the changes.

## Usage

1. Right-click on the `start_mysql.bat` file and select "Run as administrator" to ensure administrative privileges.
2. Or, you can just open it as an regular application and then select "Yes" for administrative privileges.
3. The script will check if MySQL server is already running on the background. If not, it will start the MySQL server.
4. After starting MySQL80, the script will prompt you to open MySQL Workbench 8.0. Choose "Y" to open it or "N" to skip.
5. MySQL Workbench will open if you selected "Y".

## Notes

- Ensure that you have administrative privileges to run the script successfully.
- Modify the `WORKBENCHPATH` variable in the script if your MySQL Workbench installation path is different.
- Make sure the MySQL server and MySQL Workbench are properly installed on your system.
