require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('ignore_nil', '1.0.0') do |p|
  p.description = 'ignore_nil lets you happily ignore nil methods on long method chains.  Keeps code pretty and much safer than "rescue nil", since it only catches NoMethodError on nil objects'
  p.url = 'http://github.com/ssoroka/ignore_nil'
  p.author = 'Steven Soroka'
  p.email = 'ssoroka78@gmail.com'
  p.ignore_pattern = ["tmp/*", 'script/**']
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each{|f| load f }