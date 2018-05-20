class Appointment < ActiveRecord::Base

	belongs_to :patient
	belongs_to :doctor

	validates_presence_of :doctor_id, :patient_id, :diseases

end
