#!/bin/bash
# Log Detective - L38

DATA="data/access.log"
LOG="logs/activity.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') | $*" >> "$LOG"
}

check_data() {
    if [ ! -f "$DATA" ]; then
        echo "Data not found: $DATA"
        return 1
    fi
}

show_help() {
    echo "Usage: ./main.sh"
    echo "./main.sh --help"
    echo "./main.sh --backup"
    echo "./main.sh --cron"
}

view_data() {
    check_data || return
    less "$DATA"
}

do_backup() {
    mkdir -p backups
    local f="backups/data_$(date +%Y%m%d_%H%M%S).tar.gz"
    if tar -czf "$f" data/; then
        echo "Backup saved: $f"
        log "Backup created: $f"
    else
        echo "Backup failed"
        return 1
    fi
}

view_log() {
    if [ -f "$LOG" ]; then
        tail -n 15 "$LOG"
    else
        echo "No activity yet."
    fi
}

feature_1() {
    echo "== Top 10 IP addresses =="
    check_data || return
    awk '{print $1}' "$DATA" |
        sort | uniq -c | sort -nr | head -10
    log "feature_1 used"
}

feature_2() {
    echo "== Count of each HTTP status code =="
    check_data || return
    awk '{print $(NF-1)}' "$DATA" |
        sort | uniq -c | sort -nr
    log "feature_2 used"
}

feature_3() {
    echo "== Most requested pages =="
    check_data || return
    awk -F'"' 'NF >= 2 {split($2,a," "); print a[2]}' "$DATA" |
        sort | uniq -c | sort -nr | head -10
    log "feature_3 used"
}

feature_4() {
    echo "== 404 pages list =="
    check_data || return
    awk '$9 == 404 {print $7}' "$DATA" |
        sort | uniq -c | sort -nr
    log "feature_4 used"
}

feature_5() {
    echo "== Requests per hour report =="
    check_data || return
    awk '{
        hour = substr($4, 2, 14)
        gsub(/:[0-9][0-9]$/, "", hour)
        print hour
    }' "$DATA" | sort | uniq -c | sort -k2
    log "feature_5 used"
}

cron_task() {
    check_data || return
    mkdir -p reports logs
    local output="reports/traffic.log"
    local cutoff
    cutoff=$(date '+%d/%b/%Y:%H')

    echo "Top 3 IPs for hour beginning $cutoff" >> "$output"

    awk -v hour="$cutoff" '
        index($4, "[" hour) == 1 {print $1}
    ' "$DATA" |
        sort | uniq -c | sort -nr | head -3 >> "$output"

    log "cron task ran"
    echo "Cron report updated: $output"
}
