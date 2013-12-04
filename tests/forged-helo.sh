rm -Rf /tmp/.policyd-weight
echo "helo_name=mail.example.org
recipient=test@example.org
sender=test@example.org
client_address=8.8.8.8
request=smtpd_access_policy
" | perl ../src/policyd-weight.pl -d --no-cache 2>/dev/null | grep --color -E 'action=550'
