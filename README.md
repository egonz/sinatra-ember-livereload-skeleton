sinatra-ember-skeleton
======================

Sinatra skeleton for use with ember-cli

1. git clone https://github.com/egonz/sinatra-ember-livereload-skeleton
2. mv sinatra-ember-livereload-skeleton \<project name\> && cd $_
3. bundle install
4. ember init \<project name\>
5. gem install rerun

To Run
------

In three separate shells execute:

* ember build --watch
* guard
* rerun 'rackup'

In Chrome goto: http://localhost:9292/