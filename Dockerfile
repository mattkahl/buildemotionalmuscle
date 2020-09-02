FROM ubuntu:18.04
RUN apt-get update && apt-get install -y ruby
RUN gem install wayback_machine_downloader

# $ docker build
# 2a4e0e30ac5b
# $ docker run -it -v ~/Development/buildemotionalmusclewebsite:/data 2a4e0e30ac5b
# $ wayback_machine_downloader -d /data/archives/20181003  -t 20181003  http://buildemotionalmuscle.com
