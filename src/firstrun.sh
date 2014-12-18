#!/bin/bash
mkdir -p /root/.xbmc/
if [ -d "xbmcfiles /root/.xbmc/userdata" ]; then
echo "using existing datafiles"
else
echo "creating datafiles"
cp -pr  /xbmcfiles/* /root/.xbmc/
sleep 30
fi
if [ -f "/root/.xbmc/userdata/advancedsettings.xml" ]; then
echo "using existing advancedsettings.xml"
sed -i "s|\(<host>\)[^<>]*\(</host>\)|\1${MYSQLip}\2|" /root/.xbmc/userdata/advancedsettings.xml
sed -i "s|\(<port>\)[^<>]*\(</port>\)|\1${MYSQLport}\2|" /root/.xbmc/userdata/advancedsettings.xml
sed -i "s|\(<user>\)[^<>]*\(</user>\)|\1${MYSQLuser}\2|" /root/.xbmc/userdata/advancedsettings.xml
sed -i "s|\(<pass>\)[^<>]*\(</pass>\)|\1${MYSQLpass}\2|" /root/.xbmc/userdata/advancedsettings.xml
else
cp  /advancestore/advancedsettings.xml /root/.xbmc/userdata/advancedsettings.xml
sed -i "s|\(<host>\)[^<>]*\(</host>\)|\1${MYSQLip}\2|" /root/.xbmc/userdata/advancedsettings.xml
sed -i "s|\(<port>\)[^<>]*\(</port>\)|\1${MYSQLport}\2|" /root/.xbmc/userdata/advancedsettings.xml
sed -i "s|\(<user>\)[^<>]*\(</user>\)|\1${MYSQLuser}\2|" /root/.xbmc/userdata/advancedsettings.xml
sed -i "s|\(<pass>\)[^<>]*\(</pass>\)|\1${MYSQLpass}\2|" /root/.xbmc/userdata/advancedsettings.xml
fi
