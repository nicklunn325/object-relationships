class Owner
    #has_many :dog_owners

    attr_accessor :name, :age ,:dogs
    attr_reader :id
    @@all = []
  
    def initialize(name,age)
        @name = name
        @age = age
        @@all << self
        @id = @@all.length
    end
    
    def self.all
        @@all
    end

    # def dogs
    #     Dog.all.filter{|dog| dog.owner_id == self.id}
    # end

    def self.find_by_id(id)
        self.all.find{|owner| owner.id == id}
    end

    def dogs
        DogOwner.all.filter{|x| x.owner_id == self.id}.map{|dog_owner| Dog.find_by_id(dog_owner.dog_id)}
    end

    def adopt_dog(dog)
        DogOwner.new(self.id, dog.id)
    end
    # def adopt_dog(dog)
    #     self.dogs << dog
    #     # dog.owner = self
    # end
end