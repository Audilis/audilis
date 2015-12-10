FROM rails:onbuild
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm nodejs-legacy mysql-client vim ssh rsync
RUN npm install -g phantomjs
