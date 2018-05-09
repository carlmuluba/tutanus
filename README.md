# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version

* RUBY 2.5.1 (rvmrc ruby-2.5.1@tutanus)
* RAILS 5.1.6

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

# Deployment instructions

* HEROKU DEPLOYMENT
* git commit -a (VIM o - Esc - :wq)
* git status
* git push heroku master
* heroku run rake db:migrate

  https://tutanus.herokuapp.com/
  https://git.heroku.com/tutanus.git

* ...

* Postgres 
* psql -d tutanus_development -U postgres -Wp
* \d+ "proj_pictures"
* TABLE projects 
* rails db:schema:dump (load database from server)

* heroku run rake db:schema:load

* Carriewave
* Multiple Images Uploading With CarrierWave and PostgreSQL Array
* (http://bobintornado.github.io/rails/2015/12/29/Multiple-Images-Uploading-With-CarrierWave-and-PostgreSQL-Array.html)

* //cloudinary.com 
* (https://github.com/Vitalijus/multiple-file-upload-with-carrierwave-to-cloudinary
)

* Uploading With Rails and Carrierwave
* (https://code.tutsplus.com/articles/uploading-with-rails-and-carrierwave--cms-28409)
