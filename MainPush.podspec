#
#  Be sure to run `pod spec lint Pushwoosh.podspec' to ensure this is a
#

Pod::Spec.new do |s|

  s.name         = "MainPush"
  s.version      = "1.0.3"
  s.summary      = "Push notifications library by RosPush."
  s.platform     = :ios

  s.description  = "RosPush provide MainPush-ios-sdk framework."

  s.homepage     = "http://www.google.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Andrew Kis" => "akidis.developer@gmail.com" }
  s.source       = { :git => "https://github.com/akidison/mainpush-ios-sdk.git", :tag => s.version }

  s.requires_arc = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  s.ios.deployment_target = "13.0"

  s.swift_versions = ['5.0']

  s.source_files = 'MainPush/**/*.{h,m,swift}'

end
