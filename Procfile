redis:  echo "port $PORT" | redis-server /usr/local/etc/redis.conf
worker: bundle exec rake resque:work QUEUE="8"
web:    bundle exec rails server -p $PORT