FROM rails

RUN apt-get update \
	&& apt-get install nodejs -y \
	&& gem install rails

ONBUILD COPY . /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD RUN bundle install && \
			rails db:migrate && \
			rails db:setup && \
			rails db:seed
