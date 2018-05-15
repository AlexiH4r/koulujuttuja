demowin:
  pkg.installed:
    - pkgs:
      - chrome
      - pokeys
      - adobereader
      - putty
      - ultravnc

updates:
  win_update.installed:
    - categories: 
      - 'Critical Updates'
      - 'Security Updates'
    - skips: 
      - downloaded
  win_update.downloaded:
    - categories:
      - 'Updates'
    - skips: 
      - downloaded

config_dns_servers:
  win_dns_client.dns_exists:
    - replace: False
    - servers:
      - 8.8.8.8
      - 8.8.4.4 

monitor:
    powercfg.set_timeout:
       - value: 720
       - power: ac

hibernate:
    powercfg.set_timeout:
       - value: 720
       - power: ac

absent:
  process.absent:
    - name: explorer

heureka:
  user.present:
    - name: heureka
    - fullname: heureka
   

security/nmap:
  ports.installed:
    - options:
      - IPV6: off


