base:
  pkgrepo.managed:
    - humanname: dotdeb
    - name: deb http://packages.dotdeb.org jessie all
    - file: /etc/apt/sources.list.d/dotdeb.list
    - key_url: https://www.dotdeb.org/dotdeb.gpg
    - gpgcheck: 1

