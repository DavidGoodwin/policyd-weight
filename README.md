policyd-weight
==============

policyd-weight is a mail filter for the Postfix mail transfer agent (MTA) written in Perl, by Robert Felber. 

It's official website is http://www.policyd-weight.org


This repository (currently) contains minor refactoring of the codebase.

See : http://en.wikipedia.org/wiki/Policyd-weight and http://www.policyd-weight.org/

TODO:

 * Make helo/rhdnsbl checking more configurable (i.e. more flexible than just using $dnsbl_checks_only)
 * Add some basic tests to ensure I don't break anything. (see tests/)


Changes made: 
 * Merged in GeoIP Patch
 * Updated DNS Blacklists
 * Added in RHSBL for ExCommunicado (see twitter.com/excommunicado)
 * Remove undefined variables
 * Cope with MAIL FROM being empty (as seen from outlook.com clients) and still do some checks (don't give up)


Small hint
==========

You almost certainly want to look at https://github.com/palepurple/policyd-dnsbl-spf-geoip instead.
It ought to be more maintainable and extendable. 
There's too much magic + functionality within this (policyd-weight) codebase to make modification(s) easy.
