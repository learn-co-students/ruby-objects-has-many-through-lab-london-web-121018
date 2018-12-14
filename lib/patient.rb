class Patient

  attr_accessor :name, :appointments

  @@all =[]

  def initialize (name)
    @name = name
    @appointments =[]
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = doctor.new_appointment(self, date)
    @appointments << appointment
    appointment
  end

  def appointments
    @appointments
  end

  def self.all
    @@all
  end

  def doctors
  
    doctors = []
    appointments.each do |appointment|
      doctors << appointment.doctor
    end
    doctors
  end

end
