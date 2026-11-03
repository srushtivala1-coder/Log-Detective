Project GuideProject Guide

1. Introduction

Log Detective is a Linux Shell Scripting project designed to analyse web server access logs and generate useful reports.

2. Requirements

Ubuntu Linux

Bash Shell

AWK

Basic Linux commands

Cron (for scheduled report generation)

3. How to Run the Project

Open the Ubuntu terminal and navigate to the project directory:

cd ~/linux_project/logdetective

Run the project:

./main.sh

The main menu will appear on the terminal.

If permission is denied, run:

chmod +x main.sh

Then execute the project again.

4. Menu Options

Top 10 IP Addresses – Displays the most frequent IP addresses.

HTTP Status Codes – Counts different HTTP response codes.

Most Requested Pages – Displays frequently requested web pages.

404 Error Pages – Lists pages that returned HTTP 404 errors.

Requests Per Hour – Displays the number of requests per hour.

View Access Log – Displays the access log data.

Create Backup – Creates a compressed tar.gz backup.

View Activity Log – Displays recent project activities.

Exit – Closes the application.

5. Command-Line Options

Display help:

./main.sh --help

Create a backup:

./main.sh --backup

Generate a traffic report:

./main.sh --cron

6. Project Files

main.sh – Main menu and program execution.

lib/functions.sh – Contains the project functions.

data/access.log – Sample web server access log data.

logs/activity.log – Stores activity records.

reports/traffic.log – Stores traffic reports.

backups/ – Stores compressed backup files.

7. Technologies Used

Linux

Bash Shell Scripting

AWK

sort, uniq, head and other Linux commands

tar and Cron

8. Conclusion

Log Detective demonstrates the practical use of Linux shell scripting for log analysis, reporting, activity tracking and data backup.

1. Introduction

Log Detective is a Linux Shell Scripting project designed to analyse web server access logs and generate useful reports.

2. Requirements

Ubuntu Linux

Bash Shell

AWK

Basic Linux commands

Cron (for scheduled report generation)

3. How to Run the Project

Open the Ubuntu terminal and navigate to the project directory:

cd ~/linux_project/logdetective

Run the project:

./main.sh

The main menu will appear on the terminal.

If permission is denied, run:

chmod +x main.sh

Then execute the project again.

4. Menu Options

Top 10 IP Addresses – Displays the most frequent IP addresses.

HTTP Status Codes – Counts different HTTP response codes.

Most Requested Pages – Displays frequently requested web pages.

404 Error Pages – Lists pages that returned HTTP 404 errors.

Requests Per Hour – Displays the number of requests per hour.

View Access Log – Displays the access log data.

Create Backup – Creates a compressed tar.gz backup.

View Activity Log – Displays recent project activities.

Exit – Closes the application.

5. Command-Line Options

Display help:

./main.sh --help

Create a backup:

./main.sh --backup

Generate a traffic report:

./main.sh --cron

6. Project Files

main.sh – Main menu and program execution.

lib/functions.sh – Contains the project functions.

data/access.log – Sample web server access log data.

logs/activity.log – Stores activity records.

reports/traffic.log – Stores traffic reports.

backups/ – Stores compressed backup files.

7. Technologies Used

Linux

Bash Shell Scripting

AWK

sort, uniq, head and other Linux commands

tar and Cron

8. Conclusion

Log Detective demonstrates the practical use of Linux shell scripting for log analysis, reporting, activity tracking and data backup.
