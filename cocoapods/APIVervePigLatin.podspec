Pod::Spec.new do |s|
  s.name             = 'APIVervePigLatin'
  s.version          = '1.2.3'
  s.summary          = 'Pig Latin translates English text into Pig Latin while preserving designated words from transformation.'
  s.description      = <<-'DESC'
Pig Latin translates English text into Pig Latin while preserving designated words from transformation. Pass any sentence along with an optional exclusion list to receive the encoded phrase and confirmed skipped terms.

This iOS/macOS SDK provides a convenient way to access the Pig Latin from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/piglatin?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/piglatin-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVervePigLatin/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
