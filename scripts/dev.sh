# Requires node and nodemon
nodemon --exec "bash scripts/build.sh $@ || exit 1" --ext .filter --watch src/