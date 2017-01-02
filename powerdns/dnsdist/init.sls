dnsdist.repo:
  pkgrepo.managed:
    - humanname: dnsdist
    - name: deb http://repo.powerdns.com/debian jessie-dnsdist-11 main
    - dist: jessie-dnsdist-11
    - file: /etc/apt/sources.list.d/dnsdist.list
    - keyid: FD380FBB
    - keyserver: keys.gnupg.net
    - refresh_db: true

dnsdist:
  pkg.installed:
    - fromrepo: jessie-dnsdist-11
  service:
    - enabled
    - watch:
      - file: /etc/dnsdist/dnsdist.conf

/etc/apt/preferences.d/dnsdist:
  file:
    - managed
    - source: salt://dnsdist/preferences.d-dnsdist
    - require:
      - pkg: dnsdist

/etc/dnsdist/dnsdist.conf:
  file:
    - managed
    - source: salt://dnsdist/dnsdist.conf
    - require:
      - pkg: dnsdist
