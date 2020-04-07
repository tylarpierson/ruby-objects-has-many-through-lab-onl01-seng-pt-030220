class Patient 
  attr_accessor :name 
  
  @@all = []
  
  def intialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment
    Doctor.new(date, appointment, self)
  end 
  
  def appointments 
    
  end 
  
  def doctors 
    
  end 
end 