#!/bin/bash
Passions=(Anime, Art, Physics)
Role="Sr. Linux Systems Engineer"

includes=${PWD}/includes/
func=${PWD}/func/

### Load dependency source files
# source logger function/file
. ${func}/logger.sh

ascii(){
	cat ${includes}/ascii-meditate 
}

hourlyMsgs(){
	cat ${includes}/affirmations
}

tuckinMsgs(){
	cat ${includes}/goodnight-msgs
}

nix(){
	cat ${includes}/nixtips
	logger cyan "meditate with style"
	ascii
}

initDay(){

## Wake hour count/frequency
wH=16
## Sleep hour count
sH=8

wHsec="$[16 * 60]"
sHsec="$[8 * 60]"

## /etc/init.d/rise
for ((i=0;i<${wH};i++)) ;
	do
		nix
	set -x
	cat <<EOF
	$(eval nix)
EOF
	hourlyMsgs
	done
	logger yellow "Find time for: ${Passions[*]}"
	
	sleep 60
LOOP_PID=$!
trap 'kill -9 $LOOP_PID' 0

}

night(){
tuckinMsgs
sleep ${sHsec}
}

initDay
wait $LOOP_PID
night



