require "pry"

class Doctor

  attr_accessor :name, :appointments

  @@all =[]


  def initialize (name)
    @name=name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end



  def patients
    patients = []
    app = Appointment.all
    app.each do |appointment|
      if appointment.doctor == self
        patients << appointment.patient
      end
    end
    patients
  end

end
