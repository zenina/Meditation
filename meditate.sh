#!/bin/bash
Passions=(Anime, Art, Physics)
Role="Sr. Linux Systems Engineer"

includes=${PWD}/includes/


### Load dependency source files
# source logger function/file


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
	for ((i=0;i<${wH};i++)) ;
	do
	set -x
	cat <<EOF
	$(eval nix)
	logger blue "Find time for: ${Passions[*]}"
EOF
	sleep 60
	done
}

Night(){

cat ${PWD}/
done
sleep ${sHsec}

}
initDay


