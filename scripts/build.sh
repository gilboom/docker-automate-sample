image=$(node -p "require('./package.json').name")
port=$(node -p "require('./config.json').port")

echo "port" $port

rm -r -f dist \
  && tsc \
  && docker build --build-arg port=$port -t $image .