source 'https://rubygems.org'
gemspec

# Frameworks
gem "rack"

# Persistence
gem "redis", ">= 2.1"
gem "redis-namespace", ">= 1.1.0"
gem "mongo", "~> 2.1"

# Math libraries
gem "integration", "<= 0.1.0"
gem "rubystats", ">= 0.2.4"

# APIs
gem "garb", "< 0.9.2", :require => false # API changes at this version

# Testing
gem "timecop", :require=>false
gem "webmock", :require=>false
gem "fakefs", :require => "fakefs/safe"

platform :ruby do
  # gem "bson_ext"
  gem "sqlite3", "~> 1.3.10"
end

platform :jruby do
  gem "activerecord-jdbc-adapter"
  gem "jdbc-sqlite3"
end

group :development do
  gem "appraisal", "~> 1.0.2" # For setting up test Gemfiles

  gem "jekyll", "~> 2.5.3", platform: :ruby
  gem "rake"
  gem "RedCloth"
  gem "yard"
end
