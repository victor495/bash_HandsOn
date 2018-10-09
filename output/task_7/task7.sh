#!/bin/bash

##
## This script should print the message:
## "The script <script_name> has received the argument <argument>"
## Note the special variables $0 and $1 contain precisely this information
## Take advantage of string interpolation and the command "echo" to print the message
##
## ==================================================================================
##
## SAMPLE RUN
##
## ./usage.sh ACTG
## "The script usage.sh has received the argument ACTG"
##
## ==================================================================================
script=$1
argu=$2
script=$(echo $script | tr a-z A-Z)
argu=$(echo $argu | tr a-z A-Z)
if [$argu =~ a-z]; then
        counter=0
        while [ $counter -lt 5]; do
                echo "The script $script has received the argument $argu"
                let counter=counter+1
        done
else
        echo "the script $script has recived the argumet $argu"
fi
