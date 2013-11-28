policyd-weight
==============

policyd-weight is a mail filter for the Postfix mail transfer agent (MTA) written in Perl, by Robert Felber. 

It's official website is http://www.policyd-weight.org

This repository (currently) contains minor refactoring of the codebase.

http://en.wikipedia.org/wiki/Policyd-weight and http://www.policyd-weight.org/

TODO:

 * Make helo/rhdnsbl checking more configurable (i.e. more flexible than just using $dnsbl_checks_only)
 * Allow logging to a file and not via syslog (perhaps)
 * Add some basic tests to ensure I don't break anything.
