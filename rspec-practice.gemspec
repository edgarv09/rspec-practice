require_relative 'lib/practice/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-practice"
  spec.version       = Practice::VERSION
  spec.authors       = ["edgar villamarin"]
  spec.email         = ["edgarv.uribe@hotmail.com"]

  spec.summary       = "Rspec practice"
  spec.description   = "Rspec practice from book rspec"
  spec.homepage      = "https://github.com/edgarv09/rspec-practice"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/edgarv09/rspec-practice"
    spec.metadata["changelog_uri"] = "https://github.com/edgarv09/rspec-practice"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
