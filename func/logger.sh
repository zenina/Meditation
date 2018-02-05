#!/bin/bash
# Logger
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White


#unset colors
NC='\033[0m'

logger(){
	case $1 in
		pink)
			shift 1
			echo -e "${ICyan} $@ ${NC}"
			;;
		black) 
			shift 1
			echo -e "${IBlack} $@ ${NC}"
			;;
		red)
			shift 1
			echo -e "${IRed} $@ ${NC}"
			;; 
		green)
			shift 1
			echo -e "${IGreen} $@ ${NC}"
			;;
		yellow)
			shift 1
			echo -e "${IYellow} $@ ${NC}"
			;;
		blue)
			shift 1
			echo -e "${IBlue} $@ ${NC}"
			;;
		purple)
			shift 1
			echo -e "${IPurple} $@ ${NC}"
			;;
		cyan)
			shift 1
			echo -e "${ICyan} $@ ${NC}"
			;;
		white)
			shift 1
			echo -e "${IWhite} $@ ${NC}"
			;;

		debug)
			shift 1
			echo -e "${ICyan} $@ ${NC}"
			;;
	

	esac
}


## Run logger include/function in test mode with verbose printing and +x 
while getopts "t" opt; do
case ${opt} in
t)
	set +x
	logger red "test"
	logger orange "test"
	logger black "test"
	logger red "test"
	logger green "test"
	logger yellow "test"
	logger blue "test"
	logger purple "test"
	logger cyan "test"
	logger white "test"
	shift 1
	;;
esac
done

color=$1
output=$2
logger debug "testing logger with:"
logger debug "param'\${1}' (color=${color})"
logger debug "param'\${2}' (output=${output})"
logger $color "${output}"

