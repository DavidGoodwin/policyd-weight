rm -Rf /tmp/.policyd-weight

set -e

echo "helo_name=cnnic.cn
sender=test@cnnic.cn
recipient=test@example.org
client_address=218.241.105.43
request=smtpd_access_policy
" | perl ../src/policyd-weight.pl -f policyd-config-geoip.conf -d --no-cache 2>/dev/null | grep --color -E '^|X-policyd-weigh|decided action=|IN_CHINA=2'
