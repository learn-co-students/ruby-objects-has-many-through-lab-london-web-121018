class Appointment
  attr_accessor :doctor, :patient, :date
  @@all = []

  def self.all
    @@all
  end

  def initialize(doctor, patient, date)
    @doctor = doctor
    @patient = patient
    self.class.all << self
  end
end
