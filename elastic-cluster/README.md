# ElasticSearch Cluster

## Certificates

1. `elasticsearch-certutil ca --pem --out $(pwd)/ca.zip && unzip ca.zip`
2. `for i in 1 2 3;do elasticsearch-certutil cert --pem --ca-cert $(pwd)/ca/ca.crt --ca-key $(pwd)/ca/ca.key --dns es0$i --name es0$i --out $(pwd)/es0$i.zip; unzip es0$i.zip; done`
3. `elasticsearch-setup-passwords auto`

## Users

```
Changed password for user apm_system
PASSWORD apm_system = 25ed4e4V2wRoa9Gkhpxu

Changed password for user kibana_system
PASSWORD kibana_system = f6X13ZrrEkPxjoOoTslD

Changed password for user kibana
PASSWORD kibana = f6X13ZrrEkPxjoOoTslD

Changed password for user logstash_system
PASSWORD logstash_system = ib2qhgVlFDRdpZm01Cdl

Changed password for user beats_system
PASSWORD beats_system = ZxeThzOSkrLv7IhtEtcJ

Changed password for user remote_monitoring_user
PASSWORD remote_monitoring_user = UznIxUOOhUH8pqB8ZVj0

Changed password for user elastic
PASSWORD elastic = w9J2huiGccIW6bXp2o5g

```
