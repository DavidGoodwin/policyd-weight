rm -Rf /tmp/.policyd-weight


echo "helo_name=mail.example.org
recipient=test@example.org
sender=
client_address=8.8.8.8
request=smtpd_access_policy
" | perl ../src/policyd-weight.pl -d --no-cache -f policyd-config-geoip.conf 2>&1 | grep -i -E 'decided action|weighted check'
