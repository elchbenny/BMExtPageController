# Be sure to run `pod spec lint BMExtendablePageController.podspec' to ensure this is a
Pod::Spec.new do |s|
  s.name         = "BMExtendablePageController"
  s.version      = "0.2.0"
  s.summary      = "An UIPageController replacement supporting custom and continuous transitions."
  s.description  = <<-DESC
                    A replacement for UIPageController / NSPageController, because we need custom transitions!

BMExtPageController is a drop in - replacement and mirrors almost all functionalities found in UIPageController so if you’ve been starting a project already and you feel limited with default transition styles and behavior offered - give BMExtPageController a try.

Features offered
iOS and OSX ready
Two kinds of transitions offered:
Basic transition
Continuous transitions - e. g. attach a panning gesture to take control over the transition timing
Custom transitions
use one of the built in transitions, which currently support:
Basic transition: Fading
Basic transition: Horizontal Flipping
Continuous transition: Horizontal Paged Scrolling
easily extend or create from scratch adopting one of the required protocols
BMExtendablePageTransition
BMExtendableContinuousePageTransition
Performance oriented implementation
Automatic page preloading
ViewController recycling
Multithreading using GrandDispatchCentral
No further dependencies
                   DESC
  s.homepage     = "https://github.com/elchbenny/BMExtPageController"
  s.license      = 'MIT'
  s.author       = { "Benjamin Müller" => "elchbenny@googlemail.com" }
  s.source       = { :git => "https://github.com/elchbenny/BMExtPageController.git", :tag => "0.2.0" }

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'BMExtendablePageController', 'BMExtendablePageController/**/*.{h,m}'
  s.resources = 'BMExtendablePageController/Transitions/assets/*.*'
  
  s.osx.framework  = 'QuartzCore'
  s.ios.frameworks = 'QuartzCore', 'CoreImage'

  s.requires_arc = true       
  
  s.dependency 'CAAnimationBlocks', '~> 0.0.1'
end
