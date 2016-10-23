Gem::Specification.new do |s|
  s.name = "doubler"
  s.version = "0.1.0"
  s.licenses = ["MIT"]
  s.summary = "A Demo Ruby Gem with Golang"
  s.author = "Michael Chen"
  s.email = "somebody@example.com"
  s.extensions = %w[ext/doubler/extconf.rb]

  files = Dir.glob("ext/**/*") + Dir.glob("lib/**/*.rb")
  s.files = files
  s.homepage = "https://github.com/cwchentw/doubler"
end
