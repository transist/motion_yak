module MotionYak
  module Request
   def self.get(url, &proc)
     BW::HTTP.get(url) do |response|
       json = BW::JSON.parse(response.body.to_str)
       proc.call(json)
     end
   end
   def self.put(url, data, &proc)
     BW::HTTP.put(url, {payload: data}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       proc.call(json)
     end
   end
   def self.post(url, data, &proc)
     BW::HTTP.post(url, {payload: data}) do |response|
       json = BW::JSON.parse(response.body.to_str)
       proc.call(json)
     end
   end
   def self.delete(url, &proc)
     BW::HTTP.delete(url) do |response|
       json = BW::JSON.parse(response.body.to_str)
       proc.call(json)
     end
   end
  end
end