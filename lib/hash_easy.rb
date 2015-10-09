require "hash_easy/version"
require "hash_easy/bottomless_hash"

class Hash
  def bottomless
    HashEasy::BottomlessHash.from_hash(self)
  end
end

module HashEasy
end
