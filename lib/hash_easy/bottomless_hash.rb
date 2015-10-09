module HashEasy
  class BottomlessHash < Hash
    def initialize
      super &-> h, k { h[k] = self.class.new }
    end

    def self.from_hash(hash)
      new.merge(hash)
    end
  end
end
