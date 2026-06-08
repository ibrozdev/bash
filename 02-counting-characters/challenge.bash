#!/bin/bash

read -p "what is your input string ? " STR;

if [ -z "$STR" ];
then 
   echo  "hey!, try again and enter something.";
else
   echo "$STR has ${#STR} characters, ";
fi
