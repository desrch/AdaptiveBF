#!/bin/bash

rm -rf log/$1.log

rm -rf /home/ubuntu/data
./ycsb -load -run -db rocksdb -P workloads/$1 -P rocksdb/rocksdb.properties -p threadcount=8 -s > log/$1.log