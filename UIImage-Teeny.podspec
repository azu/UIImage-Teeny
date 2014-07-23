Pod::Spec.new do |s|
  s.name             = "UIImage-Teeny"
  s.version          = "0.2.0"
  s.summary          = "Provide method for UIImage to be able to load images with the -568h postfix."
  s.homepage         = "https://github.com/azu/UIImage-Teeny"
  s.license          = 'MIT'
  s.author           = {"azu" => "azuciao@gmail.com"}
  s.source           = {:git => "https://github.com/azu/UIImage-Teeny.git", :tag => s.version.to_s}
  s.social_media_url = 'https://twitter.com/azu_re'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes'
end
