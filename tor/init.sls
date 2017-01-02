include:
  - .repo

tor:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: tor

tor-keyring:
  pkg.latest:
    - pkgs:
      - deb.torproject.org-keyring

