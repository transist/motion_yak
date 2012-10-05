module MotionYak
  module Request    
   def self.get(url, params, &block)
     BW::HTTP.get(url) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.put(url, params)
     BW::HTTP.put(url, {payload: params}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.post(url, params)
     BW::HTTP.post(url, {payload: params}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.delete(url, params)
     BW::HTTP.delete(url) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
  end
end