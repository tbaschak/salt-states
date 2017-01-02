pdns.repo:
  pkgrepo.managed:
    - humanname: powerdns
    - name: deb http://repo.powerdns.com/debian jessie-rec-40 main
    - dist: jessie-rec-40
    - file: /etc/apt/sources.list.d/powerdns-recursor.list
    - keyid: FD380FBB
    - keyserver: keys.gnupg.net
    - refresh_db: true

pdns-recursor:
  pkg.installed:
    - fromrepo: jessie-rec-40

/etc/apt/preferences.d/pdns:
  file:
    - managed
    - source: salt://powerdns/recursor/preferences.d-pdns
    - require:
      - pkg: pdns-recursor

/etc/powerdns/recursor.conf:
  file:
    - managed
    - source: salt://powerdns/recursor/recursor.conf
    - require:
      - pkg: pdns-recursor
