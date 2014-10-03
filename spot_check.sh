#!/bin/bash
# A very crude script to find a file at random in a project for spot checking
# Tries to exclude unwanted files (binaries, etc)

# Patterns started by looking at Rails projects

find . -type f | 
  grep -vi '^./.git' | 
  grep -vi '^./tmp' | 
  grep -vi '^./log' | 
  grep -vi '/\.[^/]*$' |
  grep -vi 'png$' |
  grep -vi 'pdf$' |
  grep -vi 'gif$' |
  grep -vi 'gz$' |
  
  shuf -n 1
