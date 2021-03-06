#!/usr/bin/env bash
WHITE="\033[0;29m"
BOLD_WHITE="\033[1;29m"
GREY="\033[0;30m"
BOLD_GREY="\033[1;30m"
RED="\033[0;31m"
BOLD_RED="\033[1;31m"
GREEN="\033[0;32m"
BOLD_GREEN="\033[1;32m"
YELLOW="\033[0;33m"
BOLD_YELLOW="\033[1;33m"
BLUE="\033[0;34m"
BOLD_BLUE="\033[1;34m"
VIOLET="\033[0;35m"
BOLD_VIOLET="\033[1;35m"
BIRUZ="\033[0;36m"
BOLD_BIRUZ="\033[1;36m"
NO_COLOR="\033[0m"

# Output colors for review.
DIRNAME=`dirname $0`
FILENAME=`basename $0`
for i in `tail -n +2 ${DIRNAME}/${FILENAME} | head -17`
do
  CLR=`echo $i | cut -f1 -d=`
  eval echo -ne $`echo ${CLR}`
  echo $CLR
done
