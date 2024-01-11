#!/bin/bash
WORKING_DIRECTORY="$HOME/working-directory"
source $HOME/.bin/colorEcho.sh
cd $WORKING_DIRECTORY
COMMAND='run'
TASK_COMMAND=''

run() {
    echo.BoldGreen "Starting the project services $COMMAND $TASK_COMMAND"
    echo.Reset "..."
    echo.Reset ".."
    echo.Reset "."
    task $TASK_COMMAND
}

#########################
# The command line help #
#########################
help_menu() {
    echo.Cyan "Usage: $0 [option...] {run}" >&2
    echo.Cyan
    echo.Cyan "   -s, --service           run with the given resolution WxH"
    echo.Cyan "   -h, --help              Set on which display to host on "
    echo.Cyan
    # echo some stuff here for the -a or --add-options
    exit 1
}

################################
# Check if parameters options  #
# are given on the commandline #
################################
while :; do
    case "$1" in
    -h | --help)
        help_menu # Call your function
        ;;
    -s | --service)
        TASK_COMMAND=$2
        shift 2
        ;;
    -* | --*)
        echo.BoldRed "Error: Unknown option: $1" >&2
        help_menu
        ;;
    run)
        COMMAND=$1
        shift
        ;;
    *)
        break
        ;;
    esac
done

######################
# Check if parameter #
# is set to execute #
######################

if [ -z "$TASK_COMMAND" ]; then
    echo.BoldRed "Error: Service Name  not provided" >&2
    echo.BoldIRed "e.g. $0 $COMMAND -s service_name"
    echo.Reset
    help_menu
fi

case "$COMMAND" in
run)
    run # calling function start()
    ;;
*)
    #    echo "Usage: $0 {start|stop|restart}" >&2
    help_menu

    exit 1
    ;;
esac
