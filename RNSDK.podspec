require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = 'rn-sdk-ios'
  s.module_name  = 'rn-sdk-ios'
  s.version      = '1.0.0'
  s.summary                = "-"  # TODO
  s.license      = "MIT"

  s.author       = "xinya"
  s.homepage     = "https://github.com/xinyahao/rn-ios-sdk"

  s.source       = { :git => 'https://github.com/xinyahao/rn-ios-sdk.git' }
  s.vendored_frameworks = "Frameworks/*"

  s.library = 'c++'
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end

