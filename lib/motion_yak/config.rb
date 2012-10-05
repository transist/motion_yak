module MotionYak
  module Config
   def self.api_key=(a)
    @@api_key =  a
   end 
   
   def self.api_key
    @@api_key
   end
   
   def self.callback=(c)
    @@callback =  c
   end
   
   def self.callback
    @@callback
   end
   
   def self.push=(c)
    @@push =  c
   end
   
   def self.push
    @@push
   end
   
   def self.push_params
    (@@push ? "True" : "False")
   end
  end
end