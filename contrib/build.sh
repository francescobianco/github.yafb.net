#!/usr/bin/env bash
set -e

wget -kO index.html https://github.com/francescobianco
csplit index.html /\<\/head\>/
cat xx00 etc/analytics.html xx01 > index.html
csplit index.html /\<\/body\>/
cat xx00 include/ribbon.html xx01 > index.html
sed -i '/^[[:space:]]*$/d' index.html
sed -i 's/^[ \t]*//' index.html
sed -i 's/\<form /form style="display:none" /' index.html
sed -i 's/class="HeaderMenu\-link flex\-shrink\-0 /style="display:none" ignore-class="/' index.html

rm xx00 xx01
