#!/usr/bin/env bash

PROJECT_ROOT="/home/ec2-user/cicdproject"
JAR_FILE="$PROJECT_ROOT/cicdproject-0.0.1-SNAPSHOT.jar"

APP_LOG="$PROJECT_ROOT/application.log"
ERROR_LOG="$PROJECT_ROOT/error.log"
DEPLOY_LOG="$PROJECT_ROOT/deploy.log"

TIME_NOW=$(date +%c)

echo "$TIME_TIME_NOW > Copy Jar File"
cp $PROJECT_ROOT/build/libs/*.jar $JAR_FILE

chmod +x $JAR_FILE

echo "$TIME_NOW > $JAR_FILE 파일 실행" >> $DEPLOY_LOG
nohup java -jar $JAR_FILE > $APP_LOG 2> $ERROR_LOG &

CURRENT_PID=$(pgrep -f $JAR_FILE)
echo "$TIME_NOW > 실행된 프로세스 아이디 $CURRENT_PID 입니다."
