include:
  - .repo

unifi:
  pkg.installed:
    - fromrepo: stable
  service:
    - running
