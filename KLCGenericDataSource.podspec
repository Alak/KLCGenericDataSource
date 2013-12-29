Pod::Spec.new do |s|
  s.name         = "KLCGenericDataSource"
  s.version      = "0.1"
  s.summary      = "Clean and Generic DataSource Delegate for UITableView"
  s.homepage     = ""
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "Kevin Laurent CATHALY" => "alakme@gmail.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/Alak/KLCGenericDataSource.git", :tag => s.version.to_s }
  s.source_files  = 'KLCGenericDataSourceLibrary/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
end
