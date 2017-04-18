source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'tufts_models_ng', github: 'TuftsUniversity/tufts_concerns', tag: '0.0.4'
# :path => '/Users/mkorcy01/Documents/workspace/2016/tufts_models_ng'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 5.0.5'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'fedora-migrate', :path => '/Users/mkorcy01/Documents/workspace/2016/fedora-migrate'
# Resque Gems
gem 'resque-pool'    
gem 'resque-status'
gem 'bootstrap_form'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'solr_wrapper' #, :path => '/Users/mkorcy01/Documents/workspace/2016/solr_wrapper'
  gem 'fcrepo_wrapper'
  gem 'rspec-rails', '~> 3.2'
  gem 'sqlite3'
  gem 'rubocop', '~> 0.46.0', require: false
  gem 'rubocop-rspec'
  gem 'html_routes', '~> 1.0', group: :development

end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'factory_girl_rails'
  gem 'webmock'
  gem 'database_cleaner'
  gem 'rspec-activemodel-mocks'
  gem 'ladle'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

