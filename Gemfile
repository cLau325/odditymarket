source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails',          '5.0.1'
gem 'bcrypt',         '3.1.11'
gem "paperclip", "  ~> 5.0.0"
gem 'puma',           '3.4.0'
gem 'sass-rails',     '5.0.6'
gem 'uglifier',       '3.0.0'
gem 'coffee-rails',   '4.2.1'
gem 'jquery-rails',   '4.1.1'
gem 'turbolinks',     '5.0.1'
gem 'jbuilder',       '2.4.1'

gem 'simple_form', '~> 3.5'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem "rb-fsevent", "~> 0.9.0"

group :development, :test do
  gem 'sqlite3' , '1.3.12'
  gem 'byebug',   '9.0.0',  platform: :mri
end

group :development do
  gem 'web-console',            '3.1.1'
  gem 'listen',                 '3.0.8'
  gem 'spring',                 '1.7.2'
  gem 'spring-watcher-listen',  '2.0.0'
end

group :test do
  gem 'rails-controller-testing',    '0.1.1'
  gem 'minitest-reporters',          '1.1.9'
  gem 'guard',                       '2.13.0'
  gem 'guard-minitest',              '2.4.4'
  #This is actually a bug in rails, revealed by minitest update to 5.10.2 as said here and it has already been fixed here.
  #  minitest_plugin.rb:9 getting wrong number of arguments
  gem 'minitest',                    '~> 5.10', '!= 5.10.2'
end

group :production do  
  gem 'pg' , '0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
