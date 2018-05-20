class RemoveDoctorNamePatientNameFromAppointments < ActiveRecord::Migration
  def change
  	remove_column :appointments, :doctor_name
  	remove_column :appointments, :patient_name
  end
end
