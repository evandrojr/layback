# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'layback/version'

Gem::Specification.new do |spec|
  spec.name          = "layback"
  spec.version       = Layback::VERSION
  spec.authors       = ["Evandro Junior"]
  spec.email         = ["evandrojr@gmail.com"]
  spec.summary       = %q{Subtitles downloader on demand.}
  spec.description   = %q{The script downloads subtitles when a new movie is put to a defined folder.}
  spec.homepage      = "https://github.com/evandrojr/layback"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["watch4subs", "crawl4subs", "lang4subs", "layback_remote_control_server", "layback_loader"]
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "file-monitor", "~> 0.1"
  spec.add_runtime_dependency "opensubtitles"
  spec.add_runtime_dependency "awesome_print", "~> 1.6"
  spec.add_runtime_dependency "logging", "~> 2.0"
  spec.add_runtime_dependency "sinatra", "~> 1.4"
  spec.add_runtime_dependency "json", "~> 1.8"
end
