#!/bin/bash
# === CONFIGURATION ===
SCAN_DIRS=("/var/www" "/opt/psa")
QUARANTINE_DIR="/root/php_quarantine"
LOG_FILE="/var/log/php_threat_monitor.log"
ALERT_EMAIL="your-alert@example.com"
TMP_LIST="/tmp/php_threat_hits.txt"
mkdir -p "$QUARANTINE_DIR"
PATTERNS=( "eval\\s*\\(" "base64_decode\\s*\\(" ... )
# Functions: scan_php_files, quarantine_files, send_alert
# Main execution
scan_php_files
quarantine_files
send_alert
echo "✅ Scan complete at $(date)" >> "$LOG_FILE"
