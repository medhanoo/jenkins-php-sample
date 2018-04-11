#!/bin/bash
base="/opt/releases"
res=`date +%Y%m%d`
ver=0
docroot="${base}/${res}_${ver}"
while true
do
  if [ -d "${docroot}" ]
  then
    echo "${docroot} is already there... going for next version"
    ((ver++))
    docroot="${base}/${res}_${ver}"
  else
    echo "creating docroot ${docroot}"
    sudo mkdir -m 755 "${docroot}"
    break
  fi
done

sudo mv /opt/code/* "${docroot}/"

sudo chown www-data:www-data -R "${docroot}"

if [ -L /var/www/html ]
then
  echo "unlink /var/www/html"
  sudo unlink /var/www/html
fi

echo "link /var/www/html"

sudo ln -s "${docroot}" "/var/www/html"


