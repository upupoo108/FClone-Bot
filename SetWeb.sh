#! /bin/bash

cd /app/iCopy/config/
echo "[tg]

"token = "\"$BOT_TOKEN\"

"usr_id = "\"$USER_ID\"

[database]

"db_connect_method = "\"mongodb+srv\"

"db_addr = "\"$DB_ADDRESS\"

"db_port = 27017"

"db_name = "\"$DB_NAME\"

"db_user = "\"$DB_USERNAME\"

"db_passwd = "\"$DB_PASS\"

[general]

"language = "\"$LANGUAGE\" 

"cloner = "\"fclone\"

"option = "\"$OPTION\" 

"remote = "\"icopy\"

"parallel_c = "\"$PARALLEL_CHECKERS\"

"parallel_t = "\"$PARALLEL_TRANSFERS\"

"min_sleep = "\"$MIN_SLEEP\"

"sa_path = "\"/app/iCopy/accounts\"

run_args = $RUN_ARGS

[web]

dashboard = $DASHBOARD

port = 8000
" >> conf.toml
echo "[icopy]
type = drive
scope = drive
"service_account_file = /app/iCopy/accounts/$SA_INIT_FILE"
"service_account_file_path = /app/iCopy/accounts/"
"team_drive = $TEAM_DRIVE_ID"
" >> rclone.conf
cd /app/iCopy/
wget --no-check-certificate -q $SA_ZIP_URL -O accounts.zip
unzip -qq accounts.zip -d /app/iCopy/
chmod 777 iCopyWeb.py
python3 iCopyWeb.py
