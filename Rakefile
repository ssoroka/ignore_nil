require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "ignore_nil"
    gem.summary = %Q{ignore_nil lets you happily ignore nil methods on long method chains.  Keeps code pretty and much safer than "rescue nil", since it only catches NoMethodError on nil objects}
    gem.description = %Q{
    The plugin is really rather simple; here's the ignore_nil method:

        def ignore_nil(&block)
          begin
            yield
          rescue NoMethodError, RuntimeError => e
            if (e.message =~ /You have a nil object when you didn't expect it/) ||
                (e.message =~ /undefined method `.*?' for nil:NilClass/) || (e.message =~ /^Called id for nil/)
              return nil
            else
              raise e
            end
          end
        end

    What's interesting about this is it catches both NoMethodError and RuntimeError, both of which
    can occur if a method unexpectedly returned nil and you called a method on it, but *ONLY* if
    the error message matches!  This means legitimate NoMethodError and RuntimeError messages will
    not be bothered by ignore_nil, and will still raise in your application as you expect.

    I've used this in a production application since about mid/late 2008, I'd consider it very stable.
    Feedback welcome!
    }
    gem.email = "ssoroka78@gmail.com"
    gem.homepage = "http://github.com/ssoroka/ignore_nil"
    gem.authors = ["Steven Soroka"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

# require 'spec/rake/spectask'
# Spec::Rake::SpecTask.new(:spec) do |spec|
#   spec.libs << 'lib' << 'spec'
#   spec.spec_files = FileList['spec/**/*_spec.rb']
# end
# 
# Spec::Rake::SpecTask.new(:rcov) do |spec|
#   spec.libs << 'lib' << 'spec'
#   spec.pattern = 'spec/**/*_spec.rb'
#   spec.rcov = true
# end
# 
# task :default => :spec
# 
# require 'rake/rdoctask'
# Rake::RDocTask.new do |rdoc|
#   if File.exist?('VERSION')
#     version = File.read('VERSION')
#   else
#     version = ""
#   end
# 
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title = "ignore_nil #{version}"
#   rdoc.rdoc_files.include('README*')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
