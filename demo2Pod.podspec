#
# Be sure to run `pod lib lint demo2Pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'demo2Pod'
  s.version          = '0.1.0'
  s.summary          = 'This is my second try to create a cocoapod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is my second try at creating a pod. This should all work as expected.
This will include both code and assets.
DESC

  s.homepage         = 'https://github.com/hassaan22/demo2Pod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hassaan22' => 'hassaan.shakeel@gmail.com' }
  s.source           = { :git => 'https://github.com/hassaan22/demo2Pod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'demo2Pod/Classes/**/*'
# s.resources = 'demo2Pod/Assets.bundle'
  
  s.resource_bundles = {
    'demo2Pod' => ['demo2Pod/Assets.*/**/*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
