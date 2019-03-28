lib = File.expand_path('lib', __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = 'creditstxt'
  spec.version = '1.0.1'
  spec.authors = ['Kyle E. Mitchell']
  spec.email = ['kyle@kemitchell.com']

  spec.summary =
    'Output credits for authors of RubyGems \
your Bundler-based project depends on.'
  spec.homepage = 'https://github.com/kemitchell/creditstxt.rb'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been
  # added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir = ['exe']
  spec.executables = ['creditstxt']

  spec.add_dependency 'bundler'
end
