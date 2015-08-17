# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina_slack_notifier/version'

Gem::Specification.new do |spec|
  spec.name          = "mina_slack_notifier"
  spec.version       = MinaSlackNotifier::VERSION
  spec.authors       = ["MrPowers"]
  spec.email         = ["matthewkevinpowers@gmail.com"]

  spec.summary       = %q{Speaks a deploy message in Slack}
  spec.description   = %q{Speaks a success deploy message in Slack when the code is deployed successfully.  Speaks a failure message in Slack when the deploy fails.}
  spec.homepage      = "https://github.com/MrPowers/mina_slack_notifier"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
