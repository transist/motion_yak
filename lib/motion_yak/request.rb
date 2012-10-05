module MotionYak
  module Request
   def self.get(url)
     BW::HTTP.get(url) do |response|
       json = parse(response)
       return json
     end
   end
   def self.put(url, data)
     BW::HTTP.put(url, {payload: data}) do |response|
       json = parse(response)
       return json
     end
   end
   def self.post(url, data)
     BW::HTTP.post(url, {payload: data}) do |response|
       json = parse(response)
       return json
     end
   end
   def self.delete(url)
     BW::HTTP.delete(url) do |response|
       json = parse(response)
       return json
     end
   end
   
   def self.parse(string)
    json = MotionYak::JSON.parse(string)
    p json
    json
   end
  end
end