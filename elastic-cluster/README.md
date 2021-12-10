# ElasticSearch Cluster

## Certificates

1. `elasticsearch-certutil ca --pem --out $(pwd)/ca.zip && unzip ca.zip`
2. `for i in 1 2 3;do elasticsearch-certutil cert --pem --ca-cert $(pwd)/ca/ca.crt --ca-key $(pwd)/ca/ca.key --dns es0$i --name es0$i --out $(pwd)/es0$i.zip; unzip es0$i.zip; done`
3. `elasticsearch-setup-passwords auto`

## Users

```
hanged password for user apm_system
PASSWORD apm_system = 0S6axUZOr2oGarUDfBHn

Changed password for user kibana_system
PASSWORD kibana_system = CwQcbmhaKR3vzAJhsmDN

Changed password for user kibana
PASSWORD kibana = CwQcbmhaKR3vzAJhsmDN

Changed password for user logstash_system
PASSWORD logstash_system = ZyHZrKpcq8f93BMzSo0n

Changed password for user beats_system
PASSWORD beats_system = 9aWxaL6SisjHzO9sCQVl

Changed password for user remote_monitoring_user
PASSWORD remote_monitoring_user = yEC84nM9AmPmf4XNZaMt

Changed password for user elastic
PASSWORD elastic = 8YuGugIkA2nWyk51G9h9

```
