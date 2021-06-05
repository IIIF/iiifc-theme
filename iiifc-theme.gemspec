# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "iiifc-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["IIIF-C"]
  spec.email         = ["admin@iiif.io"]

  spec.summary       = %q{Jekyll gem theme for IIIF-C web properties.}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass|data)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 4.0", "< 5.0"
  spec.add_runtime_dependency "jekyll-data"
  spec.add_runtime_dependency "jekyll-gzip"
  spec.add_runtime_dependency "jekyll-redirect-from"

  spec.add_development_dependency "bundler"
end
