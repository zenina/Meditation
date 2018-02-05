#!/bin/bash
Passions=(Anime, Art, Physics)
Role="Sr. Linux Systems Engineer"


# source logger function/file
. ${PWD}/logger.inc
cat ${PWD}/ascii-meditate 

initDay(){
cat ${PWD}/ascii-meditate 

## Formatting 
echo " (~.~) Meditate"

echo "Play with puppy"
echo "Be productive and thoughtful with how I ration the use of time; both my time and that of others."
echo "Eat healthy, exercise, and take vitamins."
echo "Use every negative experience to your advantage."
echo "Stay focused on daily objectives. Focus forward."
echo "Get work done"
echo "Be happy"
echo " (~.~) Meditate"
echo "Be respectful to others"
echo "Work towards improving and valuing your reputation"
echo "Respect friendships, relationships, family and colleagues"
echo " (~.~) Meditate"
echo "Work towards long-term goals"
echo "Have fun!"


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


