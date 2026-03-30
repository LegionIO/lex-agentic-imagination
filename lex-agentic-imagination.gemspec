# frozen_string_literal: true

require_relative 'lib/legion/extensions/agentic/imagination/version'

Gem::Specification.new do |spec|
  spec.name          = 'lex-agentic-imagination'
  spec.version       = Legion::Extensions::Agentic::Imagination::VERSION
  spec.authors       = ['Esity']
  spec.email         = ['matthewdiverson@gmail.com']

  spec.summary       = 'LEX Agentic Imagination'
  spec.description   = 'LEX agentic imagination domain: mental simulation, creativity, prospection'
  spec.homepage      = 'https://github.com/LegionIO/lex-agentic-imagination'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.4'

  spec.metadata['homepage_uri']      = spec.homepage
  spec.metadata['source_code_uri']   = spec.homepage
  spec.metadata['changelog_uri']     = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir.chdir(__dir__) do
    Dir.glob('{lib,spec}/**/*.rb') + %w[lex-agentic-imagination.gemspec Gemfile LICENSE README.md CHANGELOG.md]
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'legion-cache',     '>= 1.3.11'
  spec.add_dependency 'legion-crypt',     '>= 1.4.9'
  spec.add_dependency 'legion-data',      '>= 1.4.17'
  spec.add_dependency 'legion-json',      '>= 1.2.1'
  spec.add_dependency 'legion-logging',   '>= 1.3.2'
  spec.add_dependency 'legion-settings',  '>= 1.3.14'
  spec.add_dependency 'legion-transport', '>= 1.3.9'

  spec.add_development_dependency 'lex-agentic-memory'
  spec.add_development_dependency 'lex-emotion'
  spec.add_development_dependency 'lex-identity'
  spec.add_development_dependency 'lex-tick'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'rubocop', '~> 1.60'
  spec.add_development_dependency 'rubocop-legion', '~> 0.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.26'
end
