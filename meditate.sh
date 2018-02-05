#!/bin/bash
Passions=(Anime, Art, Physics)
Role="Sr. Linux Systems Engineer"



### Load dependency source files
# source logger function/file
. ${PWD}/logger.inc

# print meditation ascii

####

ascii(){
	cat ${PWD}/ascii-meditate 
}

hourlyMsgs(){
	cat ${PWD}/affirmations
}

tuckinMsgs(){
	cat ${PWD}/goodnight-msgs
}

nix(){
	echo "meditate with style"
}

initDay(){

## Wake hour count
wH=16
## Sleep hour count
sH=8

wHsec="$[16 * 60]"
sHsec="$[8 * 60]"

	## /etc/init.d/rise
	for ((i=0;i<${wHsec};i++)) ;
	do
	set -x
	cat <<EOF
	$(eval nix)
	logger blue "Find time for: ${Passions[*]}"
EOF
	sleep 3

	cat ${PWD}/ascii-meditate 
	done
sleep ${sHsec}
}

initDay


