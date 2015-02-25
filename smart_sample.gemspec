require './lib/smart_sample/version'

Gem::Specification.new do |s|
  s.name        = 'smart_sample'
  s.version     = SmartSample::VERSION
  s.license     = 'MIT'

  s.summary     = 'Implementation of various selection strategies'
  s.description = 'Implementation of various selection strategies, usually used in genetic algorithms'
  s.authors     = ['Daniel Marin Cabillas']
  s.email       = 'danmarcab@gmail.com'
  s.homepage    =  'https://github.com/danmarcab/smart_sample'

  s.add_development_dependency "rspec", "~>3.0"
  s.add_development_dependency "codeclimate-test-reporter", "~> 0.9"

  s.files         = `git ls-files -- lib/*`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
end
