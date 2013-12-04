rm -Rf /tmp/.policyd-weight

set -e

echo "helo_name=mail.palepurple.co.uk
sender=test@palepurple.co.uk
recipient=test@example.org
client_address=89.16.183.188
request=smtpd_access_policy
" | perl ../src/policyd-weight.pl -d --no-cache | grep --color -E '^|action=PREPEND X-policyd-weight:  NOT'
