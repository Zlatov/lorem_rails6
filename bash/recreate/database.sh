#!/usr/bin/env bash

set -eu

cd "$(dirname "${0}")"

set -a
RAILS_ENV=development
DISABLE_DATABASE_ENVIRONMENT_CHECK=1
set +a

echo 'Пересоздание мигрированием, без загрузки схемы, загрузка Обязательных данных.'
bundle exec rails db:drop &&\
bundle exec rails db:create &&\
# bundle exec rails db:schema:load &&\
bundle exec rails db:migrate &&\
bundle exec rails db:seed
