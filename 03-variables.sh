#!/bin/bash

# Getting the values of Variables from command line
echo "Hello world, I am learning DevOps with AWS"
PERSON1=$1 # this is the first value from command line
PERSON2=$2 # this is the second value from command line


echo "$PERSON1: Hi $PERSON2, Good Morning".
echo "$PERSON2: Good Morning $PERSON1"
echo "$PERSON1: How are you $PERSON2"
echo "$PERSON2: I am good, how are you $PERSON1".