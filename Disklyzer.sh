#!/bin/bash
NAME=""                                   # Name of person to greet.
TIMES=1                                   # Number of greetings to give. 
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
      echo "Feature not implemented"
      ;;
    h)
        NAME=${OPTARG}                                      # If the option is t,
      #TIMES=${OPTARG}                     # Set $TIMES to specified value.
      #re_isanum='^[0-9]+$'                # Regex: match whole numbers only
      #if ! [[ $TIMES =~ $re_isanum ]] ; then   # if $TIMES not whole:
      #  echo "Error: TIMES must be a positive, whole number."
      #  exit_abnormal
      #elif [ $TIMES -eq "0" ]; then       # If it's zero:
      #  echo "Error: TIMES must be greater than zero."
      #  exit_abnormal                     # Exit abnormally.
      #fi
      echo "Feature not implemented"
      ;;
    s)
        NAME=${OPTARG}   
      echo "Feature not implemented"
      ;;
    r)
        NAME=${OPTARG}   
      echo "Feature not implemented"
      ;;
    f)
        NAME=${OPTARG}   
      echo "Feature not implemented"
      ;;
    a)
        NAME=${OPTARG}   
      echo "Feature not implemented"
      ;;
    o)
        NAME=${OPTARG}   
      echo "Feature not implemented"
      ;;

    :)                                    # If expected argument omitted:
      echo "Error: -${OPTARG} requires an argument."
      exit_abnormal                       # Exit abnormally.
      ;;
    *)                                    # If unknown (any other) option:
      exit_abnormal                       # Exit abnormally.
      ;;
  esac
done

# if [ "$NAME" = "" ]; then                 # If $NAME is an empty string,
#   STRING="Hi!"                            # our greeting is just "Hi!"
# else                                      # Otherwise,
#   STRING="Hi, $NAME!"                     # it is "Hi, (name)!"
# fi
# COUNT=1                                   # A counter.
# while [ $COUNT -le $TIMES ]; do           # While counter is less than
#                                           # or equal to $TIMES,
#   echo $STRING                            # print a greeting,
#   let COUNT+=1                            # then increment the counter.
# done
if [ "$NAME" == "" ]; then
du -ah
fi
exit 0                                    # Exit normally.
