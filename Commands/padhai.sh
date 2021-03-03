#!/bin/sh
TEAMS="https://teams.microsoft.com/"
SLOT1="https://teams.microsoft.com/l/channel/19%3af819c546831e40a9887efe27db3460d8%40thread.tacv2/Class%2520meeting?groupId=324d3c41-c9a8-494e-8e7d-4f76f84778b1&tenantId=403ee5f4-55b3-45cd-8ae2-824be887a075"
SLOT2="https://teams.microsoft.com/"
SLOT3="https://moodle.iitb.ac.in/course/view.php?id=1993"
SLOT4="https://teams.microsoft.com/l/team/19%3a6b7663f752a141abb822baef66b846a0%40thread.tacv2/conversations?groupId=e33a17b6-8433-4571-9e94-731c83bc9aee&tenantId=403ee5f4-55b3-45cd-8ae2-824be887a075"
SLOT5="https://www.cse.iitb.ac.in/~sharat/current/cs213m/"
SLOT6="https://teams.microsoft.com/l/channel/19%3ac73be103a91045668405f224784829e5%40thread.tacv2/General?groupId=7127b5d0-d0dc-49cb-b12f-5a13530b55b9&tenantId=403ee5f4-55b3-45cd-8ae2-824be887a075"
SLOT7="http://meet.google.com/afu-jnqp-uym"
MONLAB="https://teams.microsoft.com/l/channel/19%3add7cc487c6bb423f832c223c811ee52c%40thread.tacv2/General?groupId=d7f7a1b8-ee5d-41c8-ac21-f2cf73b62b97&tenantId=403ee5f4-55b3-45cd-8ae2-824be887a075"
TUELAB="https://teams.microsoft.com/l/channel/19%3a65a312dd641e4d56b940d32bd8c46bed%40thread.tacv2/General?groupId=fac31783-d615-458c-9cea-218d768eb584&tenantId=403ee5f4-55b3-45cd-8ae2-824be887a075"
WEDLAB="https://teams.microsoft.com/"
THULAB="https://teams.microsoft.com/l/channel/19%3a99df5162bb8f4170baf69df7ec9a1bc2%40thread.tacv2/General?groupId=d603bf65-18af-48be-9ce1-f03c5d8beeb9&tenantId=403ee5f4-55b3-45cd-8ae2-824be887a075"
FRILAB="https://teams.microsoft.com/l/channel/19%3a8f00e7309e8149c989b18a4ad182b45d%40thread.tacv2/General?groupId=8a5b4e78-7b67-475f-9945-91b811257a9e&tenantId=403ee5f4-55b3-45cd-8ae2-824be887a075"

slot_1_start="0815"
slot_1_start=${slot_1_start#0}
slot_1_end="0915"
slot_1_end=${slot_1_end#0}
slot_2_start="0915"
slot_2_start=${slot_2_start#0}
slot_2_end="1015"
slot_2_end=${slot_2_end#0}
slot_3_start="1015"
slot_3_start=${slot_3_start#0}
slot_3_end="1115"
slot_3_end=${slot_3_end#0}
slot_4_start="1115"
slot_4_start=${slot_4_start#0}
slot_4_end="1215"
slot_4_end=${slot_4_end#0}
slot_5_start="0915"
slot_5_start=${slot_5_start#0}
slot_5_end="1045"
slot_5_end=${slot_5_end#0}
slot_6_start="1045"
slot_6_start=${slot_6_start#0}
slot_6_end="1215"
slot_6_end=${slot_6_end#0}
slot_7_start="1845"
slot_7_start=${slot_7_start#0}
slot_7_end="2015"
slot_7_end=${slot_7_end#0}
lab_start="1345"
lad_start=${lab_start#0}
lab_end="1645"
lad_end=${lab_end#0}


currentTime=`date +"%H%M"`
currentTime=${currentTime#0}
currentday=$(date +%u)

if [[ $currentday == 1 ]]; then
	if [[ $currentTime -ge $slot_1_start && $currentTime -le $slot_1_end ]]; then
		nohup google-chrome $SLOT1 &
	elif [[ $currentTime -ge $slot_2_start && $currentTime -le $slot_2_end ]]; then
		nohup google-chrome $SLOT2 &
	elif [[ $currentTime -ge $slot_3_start && $currentTime -le $slot_3_end ]]; then
		nohup google-chrome $SLOT3 &
	elif [[ $currentTime -ge $slot_4_start && $currentTime -le $slot_4_end ]]; then
		nohup google-chrome $SLOT4 &
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $MONLAB &
	elif [[ $currentTime -ge $slot_7_start && $currentTime -le $slot_7_end ]]; then
		nohup google-chrome $SLOT7 &
	else
		nohup google-chrome $TEAMS &
	fi
elif [[ $currentday == 2 ]]; then
	if [[ $currentTime -ge $slot_1_start && $currentTime -le $slot_1_end ]]; then
		nohup google-chrome $SLOT4 &
	elif [[ $currentTime -ge $slot_2_start && $currentTime -le $slot_2_end ]]; then
		nohup google-chrome $SLOT1 &
	elif [[ $currentTime -ge $slot_3_start && $currentTime -le $slot_3_end ]]; then
		nohup google-chrome $SLOT2 &
	elif [[ $currentTime -ge $slot_4_start && $currentTime -le $slot_4_end ]]; then
		nohup google-chrome $SLOT3 &
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $TUELAB &
	else
		nohup google-chrome $TEAMS &
	fi
elif [[ $currentday == 4 ]]; then
	if [[ $currentTime -ge $slot_1_start && $currentTime -le $slot_1_end ]]; then
		nohup google-chrome $SLOT3 &
	elif [[ $currentTime -ge $slot_2_start && $currentTime -le $slot_2_end ]]; then
		nohup google-chrome $SLOT4 &
	elif [[ $currentTime -ge $slot_3_start && $currentTime -le $slot_3_end ]]; then
		nohup google-chrome $SLOT1 &
	elif [[ $currentTime -ge $slot_4_start && $currentTime -le $slot_4_end ]]; then
		nohup google-chrome $SLOT2 &
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $THULAB &
	elif [[ $currentTime -ge $slot_7_start && $currentTime -le $slot_7_end ]]; then
		nohup google-chrome $SLOT7 &
	else
		nohup google-chrome $TEAMS &
	fi
elif [[ $currentday == 3 ]]; then
	if [[ $currentTime -ge $slot_5_start && $currentTime -le $slot_5_end ]]; then
		nohup google-chrome $SLOT5 &
	elif [[ $currentTime -ge $slot_6_start && $currentTime -le $slot_6_end ]]; then
		nohup google-chrome $SLOT6 &
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $WEDLAB &
	else
		nohup google-chrome $TEAMS &
	fi
elif [[ $currentday == 5 ]]; then
	if [[ $currentTime -ge $slot_5_start && $currentTime -le $slot_5_end ]]; then
		nohup google-chrome $SLOT5 &
	elif [[ $currentTime -ge $slot_6_start && $currentTime -le $slot_6_end ]]; then
		nohup google-chrome $SLOT6 &
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $FRILAB &
	else
		nohup google-chrome $TEAMS &
	fi
else
	nohup google-chrome $TEAMS &
fi
disown
rm /home/shivang/nohup.out
exit
