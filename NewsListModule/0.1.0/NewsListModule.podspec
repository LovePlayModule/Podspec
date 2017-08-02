#
# Be sure to run `pod lib lint NewsListModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NewsListModule'
  s.version          = '0.1.0'
  s.summary          = 'NewsListModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of NewsListModule.
                       DESC

  s.homepage         = 'https://github.com/LovePlayModule/NewsListModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YunsChou' => '2647754496@qq.com' }
  s.source           = { :git => 'https://github.com/LovePlayModule/NewsListModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'NewsListModule/Classes/**/*'
  
  s.default_subspecs = 'Model', 'View', 'Controller', 'Targets'

  s.subspec 'Model' do |ss|
    ss.source_files = 'NewsListModule/Classes/Model/**/*'
  end

  s.subspec 'View' do |ss|
    ss.source_files = 'NewsListModule/Classes/View/**/*'
    ss.dependency 'Tools'
    ss.dependency 'YYKit'
    ss.dependency 'Masonry'

    ss.dependency 'NewsListModule/Model'
  end

  s.subspec 'Controller' do |ss|
    ss.source_files = 'NewsListModule/Classes/Controller/**/*'
    ss.dependency 'Network'

    ss.dependency 'NewsListModule/View'
    ss.dependency 'NewsListModule/Model'
  end

  s.subspec 'Targets' do |ss|
    ss.source_files = 'NewsListModule/Classes/Targets/**/*'

    ss.dependency 'NewsListModule/Controller'
  end

  s.resource_bundles = {
    'NewsListModule' => ['NewsListModule/Assets/*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
