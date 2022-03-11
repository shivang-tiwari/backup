#!/bin/sh
TEAMS="https://teams.microsoft.com/"
SLOT1="https://teams.microsoft.com/_#/school/conversations/Section%205%20(Debanjan)?threadId=19:92d79fadb3534f06a14f565cf2753461@thread.tacv2&ctx=channel" # EE 350
SLOT2="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:cRKLpbGq2xkTJfwyrrcVWM1nXvy6YhO0XapjwK1-pnw1@thread.tacv2&ctx=channel" # EE 338
SLOT3="https://teams.microsoft.com/" # Free Slot
SLOT4="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:rvMyUOXixBEduMoV3L08vmLpsrLvI9LNDVSVlBMeInc1@thread.tacv2&ctx=channel" # CS 408
SLOT5="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:lgQr9ZI2dE6pD6ALJKtGRhw85Xv2xcqHtQJXdMlS0jU1@thread.tacv2&ctx=channel" # CS 419
SLOT6="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:wuS0QdaGUCsrGy6w_RGGw_NaVTb91dbvlnUEqSshFdc1@thread.tacv2&ctx=channel" # EE 739
SLOT7="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:yvQJ0iZxPf_qGe-eC88YfJgQHQqX1_JHGH-r2y5ONpM1@thread.tacv2&ctx=channel" # EE 621
SLOT8="https://teams.microsoft.com/" # Free slot
MONLAB="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:wOcxNCm7B53dmgr0PDziCigGkZnLs7YSJT24FYLi2dw1@thread.tacv2&ctx=channel" # EE 344
TUELAB="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:wOcxNCm7B53dmgr0PDziCigGkZnLs7YSJT24FYLi2dw1@thread.tacv2&ctx=channel" # EE 344
WEDLAB="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:qDPehZZSCTywSCRgheGjisxZFGnq9cKqcSF1R2ZQB7E1@thread.tacv2&ctx=channel" # EE 236
THULAB="https://teams.microsoft.com/"
FRILAB="https://teams.microsoft.com/"

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
slot_7_end="2045"
slot_7_end=${slot_7_end#0}
slot_8_start="1545"
slot_8_start=${slot_8_start#0}
slot_8_end="1645"
slot_8_end=${slot_8_end#0}
lab_start="1345"
lad_start=${lab_start#0}
lab_end="1645"
lad_end=${lab_end#0}


currentTime=`date +"%H%M"`
currentTime=${currentTime#0}
currentday=$(date +%u)
if [[ $currentday == 1 ]]; then
	if [[ $currentTime -ge $slot_1_start && $currentTime -le $slot_1_end ]]; then
		nohup google-chrome $SLOT1 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_2_start && $currentTime -le $slot_2_end ]]; then
		nohup google-chrome $SLOT2 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_3_start && $currentTime -le $slot_3_end ]]; then
		nohup google-chrome $SLOT3 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_4_start && $currentTime -le $slot_4_end ]]; then
		nohup google-chrome $SLOT4 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_7_start && $currentTime -le $slot_7_end ]]; then
		nohup google-chrome $SLOT7 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_8_start && $currentTime -le $slot_8_end ]]; then
		nohup google-chrome $SLOT8 > /dev/null 2>&1&
	#elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		#nohup google-chrome $MONLAB &
	else
		nohup google-chrome $TEAMS > /dev/null 2>&1&
	fi
elif [[ $currentday == 2 ]]; then
	if [[ $currentTime -ge $slot_1_start && $currentTime -le $slot_1_end ]]; then
		nohup google-chrome $SLOT4 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_2_start && $currentTime -le $slot_2_end ]]; then
		nohup google-chrome $SLOT1 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_3_start && $currentTime -le $slot_3_end ]]; then
		nohup google-chrome $SLOT2 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_4_start && $currentTime -le $slot_4_end ]]; then
		nohup google-chrome $SLOT3 > /dev/null 2>&1&
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $TUELAB > /dev/null 2>&1&
	else
		nohup google-chrome $TEAMS > /dev/null 2>&1&
	fi
elif [[ $currentday == 3 ]]; then
	if [[ $currentTime -ge $slot_5_start && $currentTime -le $slot_5_end ]]; then
		nohup google-chrome $SLOT5 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_6_start && $currentTime -le $slot_6_end ]]; then
		nohup google-chrome $SLOT6 > /dev/null 2>&1&
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $WEDLAB > /dev/null 2>&1&
	else
		nohup google-chrome $TEAMS > /dev/null 2>&1&
	fi
elif [[ $currentday == 4 ]]; then
	if [[ $currentTime -ge $slot_1_start && $currentTime -le $slot_1_end ]]; then
		nohup google-chrome $SLOT3 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_2_start && $currentTime -le $slot_2_end ]]; then
		nohup google-chrome $SLOT4 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_3_start && $currentTime -le $slot_3_end ]]; then
		nohup google-chrome $SLOT1 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_4_start && $currentTime -le $slot_4_end ]]; then
		nohup google-chrome $SLOT2 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_7_start && $currentTime -le $slot_7_end ]]; then
		nohup google-chrome $SLOT7 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_8_start && $currentTime -le $slot_8_end ]]; then
		nohup google-chrome $SLOT8 > /dev/null 2>&1&
	#elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		#nohup google-chrome $THULAB > /dev/null 2>&1&
	else
		nohup google-chrome $TEAMS > /dev/null 2>&1&
	fi
elif [[ $currentday == 5 ]]; then
	if [[ $currentTime -ge $slot_5_start && $currentTime -le $slot_5_end ]]; then
		nohup google-chrome $SLOT5 > /dev/null 2>&1&
	elif [[ $currentTime -ge $slot_6_start && $currentTime -le $slot_6_end ]]; then
		nohup google-chrome $SLOT6 > /dev/null 2>&1&
	elif [[ $currentTime -ge $lab_start && $currentTime -le $lab_end ]]; then
		nohup google-chrome $FRILAB > /dev/null 2>&1&
	else
		nohup google-chrome $TEAMS > /dev/null 2>&1&
	fi
else
	nohup google-chrome $TEAMS > /dev/null 2>&1&
fi
disown
exit
