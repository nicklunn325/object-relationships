class Dog
    # has_many :dog_owners

    attr_accessor :name, :breed # :owner_id # owner_id is a foreign key
    attr_reader :id
    @@all = []
    def initialize(name, breed)
        @name = name
        @breed = breed
        @@all << self
        @id = @@all.length
    end

    def self.all
        @@all
    end

    def owners
        DogOwner.all.filter{|x| x.dog_id == self.id}.map{|dog_owner| Owner.find_by_id(dog_owner.owner_id)}
    end

    def self.find_by_id(id)
        self.all.find{|dog| dog.id == id}
    end


    
    # def owner
    #     Owner.all.find do |owner|
    #         owner.id == self.owner_id
    #     end
    # end

    # def owner
    #     Person.all.find do |person|
    #         person.dogs.include?(self)
    #     end
    # end
end
