ubudemo:
  pkg.installed:
    - pkgs:
      - chrome
      - adobereader
      - putty
      - ultravnc


heureka:
  user:
    - present


security/nmap:
  ports.installed:
    - options:
      - IPV6: off


network_he:
  network:
  - managed
  - name: he
  - enabled: true
  - type: eth
  - proto: loopback

network_eth0_192.168.10.45:
  network:
  - managed
  - name: eth0
  - enabled: true
  - type: eth
  - proto: static
  - ipaddr: 192.168.10.45
  - gateway: 192.168.10.1
  - netmask: 255.255.255.0
  - noifupdown: true


publicfw:
  firewalld.present:
    - name: public
    - block_icmp:
      - echo-reply
      - echo-request
    - default: False
    - masquerade: True
    - ports: 
      - 4506/tcp
      - 4505/tcp
