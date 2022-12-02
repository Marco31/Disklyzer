#!/bin/bash
NAME=""                                   # Name of person to greet.
CMD="du -a"
LOCATION="*"
usage() {                                 # Function: Print a help message.
  echo "Usage: $0 [ -d DIR ] [ -h ] [ -s ] [ -r REGEX ] [ -f ] [ -a ] [ -o FILE ]" 1>&2 
}
exit_abnormal() {                         # Function: Exit with error.
  usage
  exit 1
}
while getopts ":d:h:s:r:f:a:o:" options; do         # Loop: Get the next option;
                                          # use silent error checking;
                                          # options n and t take arguments.
  case "${options}" in                    # 
    d)                                    # If the option is n,
      NAME=${OPTARG}                      # set $NAME to specified value.
      LOCATION=${NAME}
      CMD="$CMD $LOCATION"
      ;;
    h)
        #NAME=${OPTARG}                                      # If the option is t,
      CMD="$CMD -h"
      ;;
    s)
        NAME=${OPTARG}         
        ;;
    r)
        NAME=${OPTARG}   
        CMD="du -hs ${LOCATION}.${OPTARG}"
      #CMD="find . -regex '${OPTARG}' -print0 | du --files0-from=- -ch | tail -1"
      ;;
    f)
        NAME=${OPTARG}   
      LOCATION="$LOCATION $NAME"
      CMD="$CMD $LOCATION"
      ;;
    a)
        NAME=${OPTARG}   
        CMD="du -hs ${LOCATION}.[^.]*"
      ;;
    o)
        NAME=${OPTARG}
        DT=$(date)
        C=$(${CMD})
        echo "$DT $C" >> ${OPTARG}.txt
      ;;

    :)
    NAME="_"
      if [ "$OPTARG" == "s" ]; then
      CMD="du -hs $LOCATION | sort -h"
      echo "${CMD}"
      elif [ "$OPTARG" == "h" ]; then
      CMD="$CMD -h"
      echo "${CMD}"
      elif [ "$OPTARG" == "f" ]; then
      NAME=${OPTARG}   
      LOCATION="$LOCATION $NAME"
      CMD="$CMD $LOCATION"
      elif [ "$OPTARG" == "a" ]; then
      NAME=${OPTARG}   
      CMD="du -hs ${LOCATION}.[^.]*"
      else
      echo "Error: -${OPTARG} requires an argument."
      exit_abnormal                       # Exit abnormally.
      fi
      ;;
    *)                                    # If unknown (any other) option:
      exit_abnormal                       # Exit abnormally.
      ;;
  esac
done

if [ "$NAME" == "" ]; then
du -a
else
$CMD
fi
exit 0                                    # Exit normally.
