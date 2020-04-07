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
    Appointment.all.select { |appointment| appointment.patient == self } 
  end 
  
  def doctors 
    appointments.map(&:doctor)
  end 
end 