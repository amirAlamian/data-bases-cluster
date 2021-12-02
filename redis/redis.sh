redis-cli --cluster create 127.0.0.1:6379 172.26.0.6:6379 172.26.0.5:6379 172.26.0.4:6379 172.26.0.3:6379 172.26.0.2:6379 --cluster-replicas 1

# redis only works with ips
