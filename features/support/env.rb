require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'
require 'webmock/cucumber'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

World(FactoryBot::Syntax::Methods)

Before("@tmdb") do
  genres_path = "#{::Rails.root}/spec/fixtures/genres_response_body.txt"
  file = File.open(genres_path)
  stub_request(:get, "http://api.themoviedb.org/3/genre/movie/list?api_key=#{ENV['TMDB_API_KEY']}").
    with(headers: {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip, deflate', 'Content-Type'=>'application/json; charset=utf-8', 'Host'=>'api.themoviedb.org', 'User-Agent'=>'rest-client/2.0.2 (darwin15.5.0 x86_64) ruby/2.4.1p111'}).
    to_return(status: 200, body: file.read, headers: {})

  movies_path = "#{::Rails.root}/spec/fixtures/movies_response_body.txt"
  file = File.open(movies_path)
  stub_request(:get, "http://api.themoviedb.org/3/discover/movie?api_key=#{ENV['TMDB_API_KEY']}&sort_by=popularity.desc&with_genres=28").
    with(headers: {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip, deflate', 'Content-Type'=>'application/json; charset=utf-8', 'Host'=>'api.themoviedb.org', 'User-Agent'=>'rest-client/2.0.2 (darwin15.5.0 x86_64) ruby/2.4.1p111'}).
    to_return(status: 200, body: file.read, headers: {})
end
