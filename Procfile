web:    bundle exec rails server -p $PORT
redis:  echo "port $PORT" | redis-server /usr/local/etc/redis.conf
worker: env QUEUE=* bundle exec rake resque:work