#!/bin/bash

# save the timestamp for the results file
timestamp=`date +%Y-%m-%d-%H-%M-%S`
# get a unique set of characters to avoid collision between containers
random_set=`cat /dev/urandom | head -c 10 | base64|tr -dc "a-zA-Z0-9"`

java -jar jmeter/bin/ApacheJMeter.jar \
     -n -t tests/my.jmx \
     -l /$workdir/$results_dir/${timestamp}-${random_set}.jtl \
     -j /dev/stdout
