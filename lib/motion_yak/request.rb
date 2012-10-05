module MotionYak
  module Request
   def self.get(url, &block)
     BW::HTTP.get(url) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.put(url, data)
     BW::HTTP.put(url, {payload: data}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.post(url, data)
     BW::HTTP.post(url, {payload: data}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
   def self.delete(url)
     BW::HTTP.delete(url) do |response|
       json = BW::JSON.parse(response.body.to_str)
       block.call(json)
     end
   end
  end
end