unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'motion_yak/*.rb')).each do |file|
    app.files.unshift(file)
  end
end

module MotionYak
  
end

require 'motion_yak/request'
require 'motion_yak/config'