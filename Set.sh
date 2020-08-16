#! /bin/bash

cd /app/iCopy/config/
echo -e "[tg]\n"token = "\"$BOT_TOKEN\"\n"usr_id = "\"$USER_ID\"\n[database]\n"db_connect_method = "\"mongodb+srv\"\n"db_addr = "\"$DB_ADDRESS\"\n"db_port = 27017"\n"db_name = "\"$DB_NAME\"\n"db_user = "\"$DB_USERNAME\"\n"db_passwd = "\"$DB_PASS\"\n[general]\n"language = "\"$LANGUAGE\"\n"cloner = "\"fclone\"\n"option = "\"$OPTION\"\n"remote = "\"icopy\"\n"parallel_c = "\"$PARALLEL_CHECKERS\"\n"parallel_t = "\"$PARALLEL_TRANSFERS\"\n"min_sleep = "\"$MIN_SLEEP\"\n"sa_path = "\"/app/iCopy/accounts\"\nrun_args = $RUN_ARGS\n[web]\ndashboard = 0\nport = 8000" >> conf.toml
echo -e "[icopy]\ntype = drive\nscope = drive\n"service_account_file = /app/iCopy/accounts/$SA_INIT_FILE"\n"service_account_file_path = /app/iCopy/accounts/"\n"team_drive = $TEAM_DRIVE_ID"" >> rclone.conf
cd /app/iCopy/
wget --no-check-certificate -q $SA_ZIP_URL -O accounts.zip
unzip -qq accounts.zip -d /app/iCopy/
chmod +x iCopy.py
python3 iCopy.py
