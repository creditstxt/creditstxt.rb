lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "creditstxt"
  spec.version       = "1.0.0"
  spec.authors       = ["Kyle E. Mitchell"]
  spec.email         = ["kyle@kemitchell.com"]

  spec.summary       = %q{Output credits for authors of RubyGems your Bundler-based project depends on.}
  spec.homepage      = "https://github.com/kemitchell/creditstxt.rb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = ["creditstxt"]

  spec.add_dependency "bundler", "~> 1.16"
end
