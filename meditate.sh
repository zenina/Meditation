#!/bin/bash
Passions=(Anime, Art, Physics)
Role="Sr. Linux Systems Engineer"




initDay(){
echo " (~.~) Meditate"
echo "Play with puppy"
echo "Be productive and thoughtful with how I use my time"
echo "Stay focused on daily objectives"
echo "Get work done"
echo "Be happy"
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
	for ((i=0;i<16;i++)) ;
	do
	set -x
	cat <<EOF
	$(eval nix)
	logger pink "Find time for: ${Passions[*]}"
EOF
	sleep 3600
	done
sleep 480
}

initDay


