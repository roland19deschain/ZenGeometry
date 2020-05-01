Pod::Spec.new do |s|
  s.name             = 'ZenGeometry'
  s.version          = '1.0.0'
  s.swift_version    = '5.0'
  s.summary          = 'The Swift geometry processing library.'
  s.description      = <<-DESC
ZenGeometry is a lightweight, high performance geometry library written in Swift
                       DESC
  s.homepage         = 'https://github.com/roland19deschain/ZenGeometry'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  s.source           = { :git => 'https://github.com/roland19deschain/ZenGeometry.git', :tag => s.version }
  s.requires_arc     = true
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.source_files     = 'ZenGeometry/**/*{swift}'
end
