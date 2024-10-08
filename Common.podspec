Pod::Spec.new do |s|
  s.name = 'Common'
  s.version = '0.0.2'
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.summary = 'Common Module'
  s.homepage = 'https://twitter.com/inacioferrarini'
  s.social_media_url = 'https://twitter.com/inacioferrarini'
  s.authors = { "Inacio Ferrarini" => "inacio.ferrarini@gmail.com" }
  s.source = { :git => "https://github.com/inacioferrarini/lojinha-common.git", :tag  => "v"+s.version.to_s }
  s.platforms = { :ios => "10.0" }
  s.requires_arc = true
  s.swift_version = '4.2'
  s.cocoapods_version = '>= 1.4.0'

  s.default_subspec = "Core"
  s.subspec "Core" do |ss|
    ss.source_files  = "Sources/**/*.swift"
    ss.framework  = "Foundation"
 end
end
