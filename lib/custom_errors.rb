class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      begin
        raise PartnerError
      rescue PartnerError => error 
        puts error.message
      end
    end
  end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end

beyonce = Person.new("Beyonce")
jay_z = Person.new("Jay-Z")
beyonce.get_married(jay_z)
puts beyonce.name




