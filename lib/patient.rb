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
    Doctor
  end 
  
  def appointments 
    
  end 
  
  def doctors 
    
  end 
end 