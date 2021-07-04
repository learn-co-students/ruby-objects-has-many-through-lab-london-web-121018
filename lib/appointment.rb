


class Appointment

    attr_accessor :date 
    attr_reader :patient, :doctor

    @@all = []

    def initialize(patient, date, doctor)
        @patient = patient
        @date = date
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end
end