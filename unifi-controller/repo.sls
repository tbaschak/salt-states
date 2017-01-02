100-ubnt.repo:
  pkgrepo.managed:
    - humanname: unifi-controller
    - name: deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti
    - dist: stable
    - file: /etc/apt/sources.list.d/100-ubnt.list
    - keyid: C0A52C50
    - keyserver: keyserver.ubuntu.com
    - refresh_db: true
