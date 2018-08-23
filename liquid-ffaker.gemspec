
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "liquid/ffaker/version"

Gem::Specification.new do |spec|
  spec.name          = "liquid-ffaker"
  spec.version       = Liquid::Ffaker::VERSION
  spec.authors       = ["Craig Day"]
  spec.email         = ["cday@zendesk.com"]

  spec.summary       = %q{Liquid objects and filters powered by ffaker}
  spec.description   = %q{Liquid objects and filters powered by ffaker}
  spec.homepage      = "https://github.com/craig-day/liquid-ffaker"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ffaker", "~> 2.10"
  spec.add_runtime_dependency "liquid", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
