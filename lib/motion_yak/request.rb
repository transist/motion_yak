module MotionYak
  module Request
   def self.get(url)
     BW::HTTP.get(url) do |response|
       p response.body.to_str
     end
   end
   def self.put(url, data)
     BW::HTTP.put(url, {payload: data}) do |response|
       p response.body.to_str
     end
   end
   def self.post(url, data)
     BW::HTTP.post(url, {payload: data}) do |response|
       p response.body.to_str
     end
   end
   def self.delete(url)
     BW::HTTP.delete(url) do |response|
       p response.body.to_str
     end
   end
  end
end