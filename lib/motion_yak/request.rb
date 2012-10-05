module MotionYak
  module Request    
   def self.get(url, params, &block)
     BW::HTTP.get(url, {:format => :json}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.put(url, params, &block)
     params = BW::JSON.generate(params)
     BW::HTTP.put(url, {payload: params, :format => :json}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.post(url, params, &block)
     params = BW::JSON.generate(params)
     BW::HTTP.post(url, {payload: params, :format => :json}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.delete(url, params, &block)
     BW::HTTP.delete(url, {:format => :json}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
  end
end