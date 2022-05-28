#!/bin/sh -l
print "-------- Configuration start -----------"
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2
aws configure set region $3
print "-------- Configuration Complete -----------"
print " "
print "Uploading....."
aws s3 cp . $4 $5
print "Upload complete"