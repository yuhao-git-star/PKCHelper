#
# Be sure to run `pod lib lint PKCHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PKCHelper'
  s.version          = '0.1.1'
  s.summary          = 'A short description of PKCHelper.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A short description of PKCHelper.
                       DESC

  s.homepage         = 'https://github.com/yasuoyuhao/PKCHelper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yasuoyuhao' => 'yasuoyuhao@gmail.com' }
  s.source           = { :path => '.' }
  s.source           = { :git => 'https://github.com/yasuoyuhao/PKCHelper.git', :tag => s.version.to_s }
  s.swift_version    = '5.0' 
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'PKCHelper/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PKCHelper' => ['PKCHelper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'SwiftyBeaver', '~> 1.7.0'
end
