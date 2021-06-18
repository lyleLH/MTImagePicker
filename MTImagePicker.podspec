#
# Be sure to run `pod lib lint MTImagePicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTImagePicker'
  s.version          = '0.1.0'
  s.summary          = '一个模仿snapseed样式的图片选择器 image  previewer & picker'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  样式参照snapseed，但是支持多选，同时代码结构有着良好的设计，实现了VIPER架构。支持简单的预览减少错选的几率，同时增加了多选的功能。
                       DESC

  s.homepage         = 'https://github.com/lyleLH/MTImagePicker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'v2top1@163.com' => 'tomliu@yeahka.com' }
  s.source           = { :git => 'https://github.com/lyleLH/MTImagePicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'MTImagePicker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MTImagePicker' => ['MTImagePicker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'pop'
  s.dependency 'MTLayoutUtilityComponent'
  s.dependency 'MTCategoryComponent'
end
