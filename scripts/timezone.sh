## Timezone
echo 'start setting the timezone'
echo 'Europe/Berlin' > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata
echo 'end setting the timezone'
