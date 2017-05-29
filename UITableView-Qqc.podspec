Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "UITableView-Qqc"
  s.version      = "1.0.14"
  s.summary      = "UITableView-Qqc"
  s.homepage     = "https://github.com/xukiki/UITableView-Qqc"
  s.source       = { :git => "https://github.com/xukiki/UITableView-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["UITableView-Qqc/*.{h,m}"]

end
