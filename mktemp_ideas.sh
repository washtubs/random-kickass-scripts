#!/bin/bash


#METHOD #1

# Temp files file
temp_files = 

prefix="blahblah"
file1=$(mktemp )

#METHOD #2

## This is a name that will designate your script's temp files from everything else
#prefix="blahblah"

## %Here string 
## This is one way to do it, but I dont like it because you may need to
## create temp files further down, as in within a loop.

#read some_file some_other_file yet_another_file <<<  \
    #"$(mktemp --tmpdir "$prefix.XXXXXXXX") \
    #$(mktemp --tmpdir "$prefix.XXXXXXXX") \
    #$(mktemp --tmpdir "$prefix.XXXXXXXX")"
#echo $some_file $some_other_file $yet_another_file

## ... do some code
#rm $some_file
## ... more code blah blah

## make sure everything is cleaned up
#rm /tmp/blahblah.* 2> /dev/null

