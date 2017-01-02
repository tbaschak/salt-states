pdns.repo:
  pkgrepo.managed:
    - humanname: powerdns-server
    - name: deb http://repo.powerdns.com/debian jessie-auth-40 main
    - dist: jessie-auth-40
    - file: /etc/apt/sources.list.d/powerdns-server.list
    - keyid: FD380FBB
    - keyserver: keys.gnupg.net
    - refresh_db: true

pdns-server:
  pkg.installed:
    - fromrepo: jessie-auth-40

pdns-backend-mysql:
  pkg.installed:
    - fromrepo: jessie-auth-40

/etc/apt/preferences.d/pdns:
  file:
    - managed
    - source: salt://powerdns/authoritative/preferences.d-pdns
    - require:
      - pkg: pdns-server

/etc/powerdns/pdns.d/pdns.local.conf:
  file:
    - managed
    - template: jinja
    - source: salt://powerdns/authoritative/pdns.local.conf.jinja
    - require:
      - pkg: pdns-server

/etc/powerdns/pdns.d/pdns.mysql.conf:
  file:
    - managed
    - source: salt://powerdns/authoritative/pdns.mysql.conf
    - require:
      - pkg: pdns-backend-mysql
