module MotionYak
  module JSON
    def self.encode(json)
      BW::JSON.generate(json)
    end
    
    def self.decode(json)
      BW::JSON.parse(json)
    end
  end
end