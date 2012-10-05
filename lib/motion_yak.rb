unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'motion_yak/*.rb')).each do |file|
    app.files.unshift(file)
  end
end

require 'motion_yak/request'
require 'motion_yak/config'
require 'motion_yak/json'

module MotionYak
  def self.config(api_key)
    MotionYak::Config.api_key = api_key
  end
  
  def self.key
    MotionYak::Config.api_key
  end
  
  def self.base_url
   'https://api.emailyak.com/v1'
  end
  
  def self.api_url(url)
    [self.base_url, MotionYak.key, 'json', url].join('/')
  end
  
  def self.new_domain(domain)
    params = {'Domain': domain, 'CallbackURL': MotionYak::Config.callback, 'PushEmail': MotionYak::Config.push}
    MotionYak::Request.post self.api_url('register/domain/'), params do |json|
      p json
    end
  end
end