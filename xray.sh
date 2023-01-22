#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5b4807c9-bbb4-49f3-a950-6cdf361906db"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

