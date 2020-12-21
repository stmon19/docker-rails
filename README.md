# README

## Ruby version
- 2.7.2

## System dependencies
- docker
- docker-compose

## Configuration

※ rails newから行う場合は[こちら](https://takeshit.info/how_to_develop_rails_only_with_docker/)を参照

- `cp .env_base .env`
- `docker-compose build`
- `docker-compose run --rm web bundle config --local build.nokogiri --use-system-libraries`
- `docker-compose run --rm web bundle install --path=vendor/bundle`
- `docker-compose run --rm web yarn install`
- `docker-compose up -d`


## Database creation
- `docker-compose run --rm web bundle exec rails db:create db:migrate`
