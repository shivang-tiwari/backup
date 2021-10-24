#!/bin/sh
TEAMS="https://teams.microsoft.com/"
SLOT1="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:l5KK8Dd2qvDQDpj44sF4zvGGIUUC2MRBir26LttUcnw1@thread.tacv2&ctx=channel" # EE341
VIRUM="https://teams.microsoft.com/l/meetup-join/19%3aaAsrJafPVeYdDfEP5Uy2Xm__w26aAmY77_78JIz92ks1%40thread.tacv2/1627848652446?context=%7b%22Tid%22%3a%22403ee5f4-55b3-45cd-8ae2-824be887a075%22%2c%22Oid%22%3a%228ef7344c-e133-45b9-93e4-9f992d653314%22%7d"
VIRUT="https://teams.microsoft.com/l/meetup-join/19%3aaAsrJafPVeYdDfEP5Uy2Xm__w26aAmY77_78JIz92ks1%40thread.tacv2/1627849307881?context=%7b%22Tid%22%3a%22403ee5f4-55b3-45cd-8ae2-824be887a075%22%2c%22Oid%22%3a%228ef7344c-e133-45b9-93e4-9f992d653314%22%7d"
VIRUTH="https://teams.microsoft.com/l/meetup-join/19%3aaAsrJafPVeYdDfEP5Uy2Xm__w26aAmY77_78JIz92ks1%40thread.tacv2/1627849977378?context=%7b%22Tid%22%3a%22403ee5f4-55b3-45cd-8ae2-824be887a075%22%2c%22Oid%22%3a%228ef7344c-e133-45b9-93e4-9f992d653314%22%7d"
SLOT3="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:KHakaFnA0aTd8AFD0tUlUt_5sBB-Xw9rpbXVgv9DBiE1@thread.tacv2&ctx=channel" # HS 301
SLOT4="https://teams.microsoft.com/" # Free slot
SLOT5="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:lcS9g2Z7RF1eMfGEt5T_kVWhxwyPWGJGD11XL68D0141@thread.tacv2&ctx=channel" # CS 218
SLOT6="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:q-yheY32MycpgcXKkmkEElzeKjeCq4zBdEBsWcZhl3w1@thread.tacv2&ctx=channel" # EE 301
SLOT7="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:O6gYXouOJivFjZBCILxqpKVHUxEUjPV_n8erJYXS_ec1@thread.tacv2&ctx=channel" # EE 610
SLOT8="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:3NfeY95qsXtA6DpsP5lz6E6U7Jbq5WKNNVTxK84GQUY1@thread.tacv2&ctx=channel" # EE 605
MONLAB="https://teams.microsoft.com/"
TUELAB="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:JXp7bOoDxpL_LoZp1MFjRFWa34ltY5IqnM2rsddQLFA1@thread.tacv2&ctx=channel" # EE 340
WEDLAB="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:EpAjrPfvjVdm262mgDhPEHe6iuh2FGZvbEm57a1CiaM1@thread.tacv2&ctx=channel" # EE 230
THULAB="https://teams.microsoft.com/"
FRILAB="https://teams.microsoft.com/_#/school/conversations/General?threadId=19:EpAjrPfvjVdm262mgDhPEHe6iuh2FGZvbEm57a1CiaM1@thread.tacv2&ctx=channel" # EE 230

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
slot_7_start="1345"
slot_7_start=${slot_7_start#0}
slot_7_end="1515"
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
		nohup google-chrome $VIRUM > /dev/null 2>&1&
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
		nohup google-chrome $VIRUT > /dev/null 2>&1&
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
		nohup google-chrome $VIRUTH > /dev/null 2>&1&
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
