#
#  Copyright © 2020 Bitlica Inc. All rights reserved.
#

Pod::Spec.new do |s|
  s.name         = 'SkarbSDK'
  s.version      = '0.6.16'
  s.swift_version = '5.4'
  s.summary      = 'Summary'
  s.description  = 'Description'
  s.homepage     = 'https://github.com/igorleonovich/SkarbSDK-Apple'
  s.license      = 'MIT'
  s.author       = { "Bitlica Inc" => "support@bitlica.com" }
 # s.platform     = :ios, '11.3'
  s.ios.deployment_target = '11.3'
  s.osx.deployment_target = "10.9"
  s.source       = { :git => "https://github.com/igorleonovich/SkarbSDK-Apple.git", :tag => "#{s.version}" }
  s.source_files  = 'Sources/SkarbSDK/**/*'
  s.frameworks = 'Foundation', 'AdSupport', 'UIKit', 'StoreKit', 'AppTrackingTransparency', 'AdServices'
  s.dependency 'gRPC-Swift', '1.8.0'
  s.dependency 'ReachabilitySwift', '5.0.0'
end
