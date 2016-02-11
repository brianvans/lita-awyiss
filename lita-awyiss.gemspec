Gem::Specification.new do |spec|
  spec.name          = "lita-awyiss"
  spec.version       = "0.1.1"
  spec.authors       = ["brianvans"]
  spec.email         = ["brianvans@gmail.com"]
  spec.description   = "Lita plugin for creating aw yiss memes via awyisser.com"
  spec.summary       = "AW YISS. MOTHA FUCKIN LITA PLUGIN"
  spec.homepage      = "https://github.com/brianvans/lita-awyiss"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", "~> 4", '>= 4.0.0'
  spec.add_runtime_dependency "json", "~> 1.8"

  spec.add_development_dependency "bundler",    "~> 1.3"
  spec.add_development_dependency "pry-byebug", "~> 3.0"
  spec.add_development_dependency "rake",       "~> 10.0"
  spec.add_development_dependency "rack-test",  "~> 0.6"
  spec.add_development_dependency "rspec",      "~> 3.0"
  spec.add_development_dependency "webmock",    "~> 1.22"
end
