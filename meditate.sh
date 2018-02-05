#!/bin/bash
Passions=(Anime, Art, Physics)
Role="Sr. Linux Systems Engineer"


# source logger function/file
. ${PWD}/logger.inc

# print meditation ascii
cat ${PWD}/ascii-meditate 

initDay(){

nix(){ 
	echo "style of meditation"
}

	# 16 hours out of every day (when I'm not sleeping)
#	for ((i=0;i<16;i++)) ;
	for ((i=0;i<2;i++)) ;
	do
	set -x
	cat <<EOF
	$(eval nix)
	logger pink "Find time for: ${Passions[*]}"
EOF
	sleep 3

	echo "Chamomile tea"
	echo "Get plenty of rest"
	echo "Good night!"
	echo " (~.~) Meditate"
	cat ${PWD}/ascii-meditate 
	done
sleep 3
#sleep 480
}

initDay


