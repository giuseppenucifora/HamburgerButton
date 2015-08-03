#
# Be sure to run `pod lib lint HamburgerButton.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HamburgerButton"
  s.version          = "0.1.0"
  s.summary          = "Is a fork of original repository https://github.com/luongbang152/HamburgerButton with Pod support"
s.description      = "LBHamburgerButton is an iOS control that displays 3 lines (hamburger) and other icon (back, close...) without using image. It has a beautiful, clean and smooth transition between 2 state like Google Material Design or \"close button\" of Paper app."

  s.homepage         = "https://github.com/giuseppenucifora/HamburgerButton"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Giuseppe Nucifora" => "Giuseppe Nucifora" }
  s.source           = { :git => "https://github.com/giuseppenucifora/HamburgerButton.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'HamburgerButton' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'QuartzCore'
  # s.dependency 'AFNetworking', '~> 2.3'
end
