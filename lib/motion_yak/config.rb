module MotionYak
  module Config
   def api_key=(a)
    @@api_key =  a
   end 
   
   def api_key
    @@api_key
   end
   
   def callback=(c)
    @@callback =  c
   end
   
   def callback
    @@callback
   end
   
   def push=(c)
    @@push =  c
   end
   
   def push
    @@push
   end
   
   def push_params
    (@@push ? "True" : "False")
   end
  end
end