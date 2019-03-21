function nodev
  docker run --rm -it --name node-docker \
  -v $PWD:/home/app -w /home/app \
  -e "PORT=3000" -p 3000:3000  \
  -u node node:latest $argv
end
