base:
  pkgrepo.managed:
    - humanname: tpo-tor
    - name: deb http://deb.torproject.org/torproject.org jessie main
    - file: /etc/apt/sources.list.d/tpo-tor.list
    - key_url: salt://coldhak/tor/tpo-signing-key.pub
    - gpgcheck: 1
