# salt-states

Some salt states I'm putting out there for others to learn from and use.

## nginx state

This state sets up nginx using the nginx-extras package from [DotDeb](https://www.dotdeb.org/).

It also enforces the file `/etc/nginx/snippets/ciscodude.rewrites.conf` which gets included by two virtualhosts.

## observium-agent

This state sets up the observium_agent script and its prereq's.

## powerdns

### dnsdist

dnsdist is an amazing DNS load balancer. This sets it up in front of some recursors.

### recursor and authoritative

This sets up powerdns recursor or authoritative server.

## tor

This state sets up the official deb.torproject.org repo and installs the stable version of tor.

## unifi-controller

This state sets up the UBNT Unifi Controller (Stable) based on instructions from [UBNT Help](https://help.ubnt.com/hc/en-us/articles/220066768-UniFi-How-to-Install-Update-via-APT-on-Debian-or-Ubuntu)

