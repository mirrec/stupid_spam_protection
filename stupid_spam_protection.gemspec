# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stupid_spam_protection/version'

Gem::Specification.new do |gem|
  gem.name          = "stupid_spam_protection"
  gem.version       = StupidSpamProtection::VERSION
  gem.authors       = ["Miroslav Hettes"]
  gem.email         = ["mirrec@gmail.com"]
  gem.description   = %q{Add velidation for not existing field. Usefull as spam protection in forms.}
  gem.summary       = %q{Spam protection by validation}
  gem.homepage      = "https://github.com/mirrec/stupid_spam_protection"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "active_record_no_table"
end
