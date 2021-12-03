# ElasticSearch Cluster

## Certificates

1. `elasticsearch-certutil ca --pem --out $(pwd)/ca.zip && unzip ca.zip`
2. `for i in 1 2 3;do elasticsearch-certutil cert --pem --ca-cert $(pwd)/ca/ca.crt --ca-key $(pwd)/ca/ca.key --dns es0$i --name es0$i --out $(pwd)/es0$i.zip; unzip es0$i.zip; done`
3. `elasticsearch-setup-passwords auto`

## Users

```
Changed password for user apm_system
PASSWORD apm_system = KiSKuiGXr1VBERVl3KIp

Changed password for user kibana_system
PASSWORD kibana_system = um1bkzLNJjRnT6oH11GT

Changed password for user kibana
PASSWORD kibana = um1bkzLNJjRnT6oH11GT

Changed password for user logstash_system
PASSWORD logstash_system = diCmk9AMesYrrC1wssFe

Changed password for user beats_system
PASSWORD beats_system = duwB5ad7Cb2sOM1DxIcP

Changed password for user remote_monitoring_user
PASSWORD remote_monitoring_user = zrtIMscING6aGC0ekMHM

Changed password for user elastic
PASSWORD elastic = rW8bpjKVdMr5P4mlMwIF

```