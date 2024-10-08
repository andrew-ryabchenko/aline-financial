#!/bin/sh

export APP_PORT=8080
java -jar /usr/src/user-microservice-0.1.0.jar &
pid1=$!

export APP_PORT=8071
java -jar /usr/src/underwriter-microservice-0.1.0.jar &
pid2=$!

export APP_PORT=8083
java -jar /usr/src/bank-microservice-0.1.0.jar &
pid3=$!

export APP_PORT=8072
java -jar /usr/src/account-microservice-0.1.0.jar &
pid4=$!

export APP_PORT=8073
java -jar /usr/src/transaction-microservice-0.1.0.jar &
pid5=$!

sleep 30

check_process() {
    if kill -0 $1 2>/dev/null; then
        echo "Process with PID $1 is running."
    else
        echo "Process with PID $1 has exited."
        exit 1
    fi
}

#Perform health check

check_process $pid1
check_process $pid2
check_process $pid3
check_process $pid4
check_process $pid5

# Keep the script running to prevent the container from exiting
# This is a simple infinite loop that does nothing but wait
while true; do
    sleep 60
done
