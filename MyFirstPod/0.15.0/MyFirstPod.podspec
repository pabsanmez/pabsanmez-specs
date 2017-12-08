#
#  Be sure to run `pod spec lint MyFirstPod.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "MyFirstPod"
s.summary = "Learning."
s.requires_arc = true

# 2
s.version = '0.15.0'

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4
s.author = { "Pablo Sánchez Gómez" => "pabsanmez@gmail.com" }

# 5
s.homepage = "https://github.com/pabsanmez/MyFirstPod"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/pabsanmez/MyFirstPod.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"
s.dependency 'MBProgressHUD', '~> 1.1.0'

# 8
s.source_files = "MyFirstPod/**/*.{swift}"

# 9
s.resources = "MyFirstPod/**/*.{png,jpeg,jpg,storyboard,xib}"
end

#s.exclude_files = "MyFirstPod/Exclude"
