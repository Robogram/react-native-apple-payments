require "json"

package = JSON.parse(File.read(File.join(__dir__, "../../package.json")))
version = package["version"]
giturl = package["repository"]["url"]

Pod::Spec.new do |s|
  s.name         = "ReactNativeApplePayments"
  s.version      = package["version"]
  s.summary      = "react-native-apple-payments"
  s.description  = <<-DESC 
  Native Apple Payments (Google and Apple Pay) from React-Native 
  DESC
  s.homepage     = "giturl"
  s.license      = "MIT"
  s.author       = "Geottuse"
  s.platform     = :ios, "10.0"
  s.source       = { :tag => "#{s.version}" }
  s.source_files  = "lib/ios/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
