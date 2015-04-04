# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperclip/av/qtfaststart/version'

Gem::Specification.new do |spec|
  spec.name          = "paperclip-av-qtfaststart"
  spec.version       = Paperclip::Av::Qtfaststart::VERSION
  spec.authors       = ["Omar Abdel-Wahab"]
  spec.email         = ["owahab@gmail.com"]
  spec.summary       = %q{Fix FFmpeg MP4 video files.}
  spec.description   = %q{Fix FFmpeg MP4 video files.}
  spec.homepage      = "https://github.com/ruby-av/paperclip-av-qtfaststart"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
