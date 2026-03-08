bundle exec jekyll liveserve

# Docker 环境下运行

docker build -t jekyll-site .

docker run -it --rm \
  --user $(id -u):$(id -g)\
  -p 4000:4000 \
  -p 35729:35729 \
  -v $(pwd):/site \
  jekyll-site \
  jekyll serve --no-watch --host 0.0.0.0