# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pushy_client/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mark Anderson"]
  gem.email         = ["mark@opscode.com"]
  gem.description   = %q{Client for opscode chef push jobs server}
  gem.summary       = %q{Client for opscode chef push jobs server}
  gem.homepage      = "https://github.com/opscode/opscode-pushy-client"

  gem.executables   = Dir.glob('bin/**/*').map{|f| File.basename(f)}
  gem.files         = Dir.glob('**/*').reject{|f| File.directory?(f)}
  gem.test_files    = Dir.glob('{test,spec,features}/**/*')
  gem.name          = "opscode-pushy-client"
  gem.require_paths = ["lib"]
  gem.version       = PushyClient::VERSION

  gem.add_dependency "chef", ">= 11.12.2"
#
# Lock ohai to 7.0.4 because v8 requires a newer ruby. 7.0.4 was chosen because
# other stuff was already locking on that.
# Remove once we're ready for ruby 2.1.x (probably at version 2.0)
#
  gem.add_dependency "ohai", "~> 7.0.4"
  gem.add_dependency "zmq"
  gem.add_dependency "uuidtools"

  %w(rdoc rspec_junit_formatter).each { |dep| gem.add_development_dependency dep }
  end
