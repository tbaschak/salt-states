xinetd:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: xinetd
    - watch:
      - file: /etc/xinetd.d/observium_agent_xinetd

/usr/bin/observium_agent:
  file:
    - managed
    - mode: 755
    - source: salt://observium-agent/observium_agent
    - require:
      - pkg: xinetd

/etc/xinetd.d/observium_agent_xinetd:
  file:
    - managed
    - source: salt://observium-agent/observium_agent_xinetd
    - require:
      - pkg: xinetd
