# salt-states

some salt states I'm using

## nginx state

This state sets up nginx using the nginx-extras package from [DotDeb](https://www.dotdeb.org/).

It also enforces the file `/etc/nginx/snippets/ciscodude.rewrites.conf` which gets included by two virtualhosts.
