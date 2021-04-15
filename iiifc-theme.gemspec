require_relative 'lib/iiifc/theme/version'

Gem::Specification.new do |spec|
  spec.name          = "iiifc-theme"
  spec.version       = Iiifc::Theme::VERSION
  spec.authors       = ["IIIF-C"]
  spec.email         = ["admin@iiif.io"]

  spec.summary       = %q{Jekyll gem theme for IIIF-C web properties.}
  spec.homepage      = ""
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 4.0", "< 5.0"

  spec.add_development_dependency "bundler"
end
