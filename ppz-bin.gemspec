Gem::Specification.new do |s|
  s.name        = 'ppz-bin'
  s.version     = '0.0.1'
  s.executables << 'ppz'
  s.summary     = '一种写作方式'
  s.authors     = ['wuse']
  s.email       = '372301467@qq.com'
  s.files       = Dir['bin/*.rb'] + Dir['asset/**/*']
  s.homepage    = 'https://github.com/daGaiGuanYu/ppz'
  s.license     = 'MIT'

  s.add_runtime_dependency 'ppz'
end