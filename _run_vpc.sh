#!/bin/sh
set -e 

FILE="cfn_vpc.yml"
STACKNAME="generic-vpc"
PARAMS="ParameterKey=EnvironmentName,ParameterValue=Generic"
aws cloudformation deploy --template-file $FILE --stack-name $STACKNAME --parameter-overrides $PARAMS
