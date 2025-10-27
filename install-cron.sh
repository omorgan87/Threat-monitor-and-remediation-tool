#!/bin/bash
SCRIPT_PATH="/opt/php-threat-monitor/monitor.sh"
CRON_SCHEDULE="0 3 * * *"
(crontab -l 2>/dev/null; echo "$CRON_SCHEDULE $SCRIPT_PATH") | crontab -
echo "✅ Cron job installed: $CRON_SCHEDULE $SCRIPT_PATH"
