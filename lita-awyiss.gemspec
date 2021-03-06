Gem::Specification.new do |spec|
  spec.name          = 'lita-awyiss'
  spec.version       = '0.1.2'
  spec.authors       = ['brianvans']
  spec.email         = ['brianvans@gmail.com']
  spec.description   = 'Lita plugin for creating aw yiss memes via awyisser.com'
  spec.summary       = 'AW YISS. MOTHA FUCKIN LITA PLUGIN'
  spec.homepage      = 'https://github.com/brianvans/lita-awyiss'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4'
  spec.add_runtime_dependency 'json'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3'
  spec.add_development_dependency 'webmock'
end
