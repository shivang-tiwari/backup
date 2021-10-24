#!/bin/bash
nohup google-chrome https://webmail.iitb.ac.in/ > /dev/null 2>&1&
disown
exit
