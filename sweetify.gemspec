$:.push File.expand_path('../lib', __FILE__)
require 'sweetify/version'

Gem::Specification.new do |s|
  s.name        = 'sweetify'
  s.version     = Sweetify::VERSION
  s.authors     = ['Atrox']
  s.email       = ['mail@atrox.me']
  s.homepage    = 'https://github.com/atrox/sweetify'
  s.summary     = 'SweetAlert integrated in Ruby on Rails'
  s.description = 'Sweetify allows you to easily use SweetAlert within your controllers'
  s.license     = 'BSD-3-Clause'

  s.files    = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  s.platform = Gem::Platform::RUBY

  s.add_dependency 'actionpack'
end
