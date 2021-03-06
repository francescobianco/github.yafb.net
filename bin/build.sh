#!/usr/bin/env bash

wget -kO docs/index.html https://github.com/francescobianco
csplit docs/index.html /\<\/head\>/
cat xx00 etc/analytics.html xx01 > docs/index.html
csplit docs/index.html /\<\/body\>/
cat xx00 etc/ribbon.html xx01 > docs/index.html
sed -i '/^[[:space:]]*$/d' docs/index.html
sed -i 's/^[ \t]*//' docs/index.html
sed -i 's/\<form /form style="display:none" /' docs/index.html
sed -i 's/class="HeaderMenu\-link flex\-shrink\-0 /style="display:none" ignore-class="/' docs/index.html

rm xx00 xx01
