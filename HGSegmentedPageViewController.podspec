#
# Be sure to run `pod lib lint HGSegmentedPageViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HGSegmentedPageViewController'
  s.version          = '1.2.2'
  s.license          = 'MIT'
  s.summary          = 'A paging solution'
  s.description      = %{
    A paging solution.
    HGSegmentedPageViewController supports iOS.
  }                       
  s.homepage         = 'https://github.com/ArchLL/HGSegmentedPageViewController'
  s.author           = { 'Arch' => 'mint_bin@163.com' }
  s.source           = { :git => 'https://github.com/ArchLL/HGSegmentedPageViewController.git', :tag => s.version.to_s }
  s.source_files = 'HGSegmentedPageViewController/*.{h,m}' 
  s.ios.frameworks = 'Foundation', 'UIKit'
  s.ios.deployment_target = '9.0'
  s.dependency 'Masonry', '~> 1.1.0'
  s.dependency 'HGCategoryView', '~> 1.1.9'
  s.requires_arc = true
end
