require File.expand_path('../lib/sastrawi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'sastrawi'
  gem.version       = Sastrawi::VERSION
  gem.date          = '2017-01-23'
  gem.summary       = "Indonesian Language Ruby Stemmer"
  gem.description   = "Sastrawi is a gem for stemming in Indonesian language. It is based from Sastrawi for PHP by Andy Librian."
  gem.authors       = ["Gilang R. Aprianto"]
  gem.email         = 'gizipp.gizipp@gmail.com'
  gem.files         = ["lib/sastrawi.rb"]
  gem.homepage      = 'http://rubygems.org/gems/sastrawi'
  gem.license       = 'MIT'
  gem.files         = Dir['{**/}{.*,*}'].select { |path| File.file?(path) && !path.start_with?('pkg') }
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ['lib']
end
