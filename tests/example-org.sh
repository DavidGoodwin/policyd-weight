rm -Rf /tmp/.policyd-weight
echo "helo_name=mail.example.org
sender=test@example.org
client_address=8.8.8.8
request=smtpd_access_policy
" | perl ../src/policyd-weight.pl -d
