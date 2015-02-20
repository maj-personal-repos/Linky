#
# Be sure to run `pod lib lint Linky.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Linky"
  s.version          = "0.1.0"
  s.summary          = "Linky is a cocoapod that provides two custom segues, LinkStoryboardSegue and LinkStoryboardModalSegue."
  s.description      = <<-DESC
                       Linky is a cocoapod that provides two custom segues, LinkStoryboardSegue and LinkStoryboardModalSegue, allowing the UI to be broken up into separate storyboards. This allows for multiple developers to work on the UI design without having to painstakingly merge a single storyboard.

                       DESC
  s.homepage         = "https://github.com/drmaj/Linky"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Miguel Alonso Jr." => "drmiguelalonsojr@gmail.com" }
  s.source           = { :git => "https://github.com/drmaj/Linky.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/drmajr'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Linky' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
