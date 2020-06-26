#!/bin/bash
#Version 20.1

#competition name
club="ycf"
rm ~/$club/output/*

#Get the Strava segment efforts for the clubname
#~/apps/segmentefforts.py $club

#Sort the segment efforts into divisions from the segment effort files
~/apps/divisionsgrimp.py $club

#Build the league tables from the division files
~/apps/leaguesgrimp.py $club

#Finalise html
~/apps/finalisehtmlgrimp.sh $club
~/apps/finalisehtmlgrimpssl.sh $club

#upload finished html to AWS
~/apps/awsupload.sh $club
~/apps/sslawsupload.sh $club

#THE END
