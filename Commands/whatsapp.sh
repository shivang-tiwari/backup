#!/bin/bash
nohup google-chrome https://web.whatsapp.com/ > /dev/null 2>&1&
disown
exit
