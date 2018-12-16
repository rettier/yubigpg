#!/bin/bash
echo -n "eval bash -c 'bash <(echo " > public/quick
cat public/plain | base64 | tr -d "[:space:]" >> public/quick
echo " | base64 --decode)'" >> public/quick

firebase deploy
