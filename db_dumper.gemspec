require_relative 'lib/db_dumper/version'

Gem::Specification.new do |spec|
  spec.name          = "db_dumper".freeze
  spec.version       = DbDumper::VERSION
  spec.authors       = ["Youssef FKHAR".freeze]
  spec.email         = ["y.fkhar@yahoo.com".freeze]

  spec.summary       = %q{a tool to dump database}
  spec.description   = <<~DESCRIPTION
  DB-dumper is a tool to dump database
  support Mysql and Postgresql
  DESCRIPTION
  spec.homepage      = "https://github.com/yfkhar/db_dumper".freeze
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/yfkhar/db_dumper/blob/history.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
