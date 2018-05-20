class Patient < ActiveRecord::Base

	has_many :appointments

	validates_presence_of :name, :phone_number
    validates_numericality_of :phone_number
    validates_length_of :phone_number, is:10

end
