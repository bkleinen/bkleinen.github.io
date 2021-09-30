#!/bin/bash
# from https://gist.github.com/dtiemann83/cfa16ade69a3ea451ad760d4118a9351
CURTAG=`git describe --abbrev=0 --tags`;
CURTAG="${CURTAG/v/}"

IFS='.' read -a vers <<< "$CURTAG"

MAJ=${vers[0]}
MIN=${vers[1]}
#echo "Current Tag: v$MAJ.$MIN"

for cmd in "$@"
do
	case $cmd in
		"--major")
			# $((MAJ+1))
			((MAJ+=1))
			MIN=0
			BUG=0
	#		echo "Incrementing Major Version#"
			;;
		# "--minor")
    *)
			((MIN+=1))
			BUG=0
	#		echo "Incrementing Minor Version#"
			;;

	esac
done
NEWTAG="v$MAJ.$MIN"
#echo "Adding Tag: $NEWTAG";
git tag -a $NEWTAG -m $NEWTAG
echo $NEWTAG
