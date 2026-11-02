# L38 - Log Detective

## Project Description
Log Detective is a Linux shell scripting mini-project that analyzes web server access logs and generates useful reports.

## Technologies Used
- Ubuntu Linux
- Bash Shell Scripting
- AWK
- grep, sort, uniq, head
- tar
- Cron

## Features
1. Display the top 10 IP addresses.
2. Count each HTTP status code.
3. Display the most requested pages.
4. List pages returning HTTP 404 errors.
5. Generate a requests-per-hour report.
6. View access log data.
7. Create a compressed backup using tar.gz.
8. View the activity log.
9. Generate a report of the top 3 IP addresses for the current hour.

## Project Structure
- main.sh: Main menu and command handling
- lib/functions.sh: Project functions
- data/access.log: Sample web server access logs
- logs/activity.log: Activity history
- reports/traffic.log: Cron traffic report
- backups/: Compressed backups

## How to Run
Open the terminal and navigate to the project folder:

    cd ~/linux_project/logdetective

Run the interactive menu:

    ./main.sh

Show help:

    ./main.sh --help

Create a backup:

    ./main.sh --backup

Generate the traffic report:

    ./main.sh --cron

## Conclusion
Log Detective demonstrates Linux shell scripting, log analysis, file backup, activity logging, and scheduled task concepts.
