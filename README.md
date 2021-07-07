```bash
docker-compose build --pull --force-rm
docker-compose up -V -d
while [[ $(docker ps -n 2 -q -f health=healthy -f status=running | wc -l) -lt 2 ]] ; do
  echo -ne '.' ;
  sleep 1s ;
done
http :80
docker-compose down -v --rmi local
# or: docker-compose down --rmi local
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
