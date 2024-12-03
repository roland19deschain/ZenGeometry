Pod::Spec.new do |spec|
  spec.name             = 'ZenGeometry'
  spec.version          = '2.0.1'
  spec.swift_version    = '5.9'
  spec.summary          = 'The Swift geometry processing library.'
  spec.description      = <<-DESC
ZenGeometry is a lightweight, high performance geometry library written in Swift
                       DESC
  spec.homepage         = 'https://github.com/roland19deschain/ZenGeometry'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  spec.source           = { :git => 'https://github.com/roland19deschain/ZenGeometry.git', :tag => spec.version }
  spec.requires_arc     = true
  spec.ios.deployment_target = '14.0'
  spec.osx.deployment_target = '10.15'
  spec.tvos.deployment_target = '14.0'
  spec.watchos.deployment_target = '6.0'
  spec.source_files     = 'Sources/**/*{swift}'
  spec.dependency 'ZenSwift'
end
