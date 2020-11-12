FROM ruby:2.7.2

RUN apt update && apt install -y lsb-release \
    && apt remove -y libmariadb-dev-compat libmariadb-dev

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs postgresql-client yarn default-libmysqlclient-dev\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /middle-name

WORKDIR /middle-name
COPY Gemfile /middle-name/Gemfile
COPY Gemfile.lock /middle-name/Gemfile.lock
RUN bundle install
COPY . /middle-name

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
