class DogOwner # JOIN CLASS/TABLE
    # belongs_to :owner
    # belongs_to :dog`
    attr_accessor :owner_id, :dog_id
    attr_reader :id
    @@all = []
    def initialize(owner_id, dog_id)
        @owner_id = owner_id
        @dog_id = dog_id
        @@all << self
        @id = @@all.length
    end
    
    def self.all
        @@all
    end
end