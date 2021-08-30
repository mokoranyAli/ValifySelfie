#
# Be sure to run `pod lib lint ValifySelfie.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ValifySelfie'
  s.version          = '0.1.1'
  s.summary          = 'ValifySelfie for take selfie with one face in camera'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  'ValifySelfie task for Valify company, It is pod to open camera and take selfie with one face only .. Can not take selfie nither a lot of faces exist nor no human face in camera'
  DESC
  
  s.homepage         = 'https://github.com/mokoranyAli/ValifySelfie'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mokoranyali' => 'mohammed.korany.ali@gmail.com' }
  s.source           = { :git => 'https://github.com/mokoranyali/ValifySelfie.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '13.6'
  
  s.source_files = 'Source/**/*'
  
  # s.resource_bundles = {
  #   'ValifySelfie' => ['ValifySelfie/Assets/*.png']
  # }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
