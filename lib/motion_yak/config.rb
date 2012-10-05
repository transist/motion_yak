module MotionYak
  module Config
   def api_key=(a)
    @@api_key =  a
   end 
   
   def api_key
    @@api_key
   end
  end
end