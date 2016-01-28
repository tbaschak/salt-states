include:
  - .repo

nginx:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: nginx
    - watch:
      - file: /etc/nginx/snippets/ciscodude.rewrites.conf

nginx-extras:
  pkg.latest:
    - pkgs:
      - nginx-extras

/etc/nginx/snippets/ciscodude.rewrites.conf:
  file:
    - managed
    - template: jinja
    - source: salt://settings/roles/nginx/ciscodude.rewrites.conf
    - require:
      - pkg: nginx

