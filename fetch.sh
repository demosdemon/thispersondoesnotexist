#!/usr/bin/env bash

set -e

count=3000
delay=15
url='https://thispersondoesnotexist.com/'

i=0

mkdir -p out

while ((i++ < count)); do
    fn="out/does_not_exist_$(date +%s).jpg"
    curl -s -D /dev/stderr -o "$fn" -H 'Accept: image/*' "$url"
    echo "Saved $fn"
    sleep $((RANDOM % delay))
done
