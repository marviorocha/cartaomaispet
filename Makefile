APP := app
RUN := docker-compose run --rm $(APP)
spec := spec
env := development

rails:
				$(RUN) rails 
bundle:
				$(RUN) bundle install
up:
				docker-compose up
bash:
				$(RUN) bash
console:
				$(RUN) bundle exec rails c -e $(env)
rspec:
				$(RUN) bundle exec rspec $(spec)
create:
				$(RUN) bundle exec rake db:create
migrate:
				$(RUN) bundle exec rake db:migrate
seed:
				$(RUN) bundle exec rake db:seed
drop:
				$(RUN) bundle exec rake db:drop
reset:
				$(RUN) bundle exec rake db:drop db:create db:migrate db:seed
run:
				$(RUN) bundle exec $(c)
