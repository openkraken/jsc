#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint jsc.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'jsc'
  s.version          = '0.0.1'
  s.summary          = 'Pre-built JavaScriptCore bindary.'
  s.description      = <<-DESC
Pre-built JavaScriptCore bindary.
                       DESC
  s.homepage         = 'https://openkraken.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'openkraken@alibaba-inc.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.prepare_command = 'unzip -o JavaScriptCore.framework.zip'
  s.vendored_frameworks = 'JavaScriptCore.framework'
  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
