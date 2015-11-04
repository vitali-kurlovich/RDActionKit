#
# Be sure to run `pod lib lint RDActionKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RDActionKit"
  s.version          = "0.1.2"
  s.summary          = "Action and blocks for UIControls"

  s.description      = <<-DESC
                        Action and blocks for UIControls
                        * command pattern
                        DESC

  s.homepage         = "https://github.com/vitali-kurlovich/RDActionKit"
  s.license          = 'MIT'
  s.author           = { "Vitali Kurlovich" => "vitalikurlovich@gmail.com" }
  s.source           = { :git => "https://github.com/vitali-kurlovich/RDActionKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'RDActionKit/**/*'
  s.frameworks = 'Foundation', 'UIKit'

end
