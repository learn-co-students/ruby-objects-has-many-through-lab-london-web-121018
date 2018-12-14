
class Doctor
  attr_accessor :name
  @@all = []


  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient_ins,date)
    appointment = Appointment.new(date,patient_ins,self)

  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    appointments.map do |app|
      app.patient
    end
  end
end
