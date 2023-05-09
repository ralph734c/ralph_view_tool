# frozen_string_literal: true

require_relative "lib/ralph_view_tool/version"

Gem::Specification.new do |spec|
  spec.name = "ralph_view_tool"
  spec.version = RalphViewTool::VERSION
  spec.authors = ["Christopher Ralph"]
  spec.email = ["chris.734c@gmail.com"]

  spec.summary = "Various view specific methods for applications I use from a course I took."
  spec.description = "Provides generated HTML data for Rails applications"
  spec.homepage = "https://devcamp.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "bundler", "~> 1.3"
  spec.add_dependency "rake", "~> 13.0.6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
