sinatra-ember-livereload-skeleton
======================

Sinatra skeleton for use with ember-cli

1. git clone https://github.com/egonz/sinatra-ember-livereload-skeleton
2. mv sinatra-ember-livereload-skeleton \<project name\> && cd $_
3. bundle install
4. gem install rerun
5. ember init \<project name\>; Enter Y to Overwrite Readme.md
6. ember build

## To Run

In three separate shells execute the following commands in this order:

1. guard
2. rerun 'rackup'
3. ember build --watch

In Chrome goto: http://localhost:9292/

## Test it out

Make a change to the app/styles/app.css. The change will be copied to dist/assets/\<project name\>.css, and your browser will reload.