class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :doctor_name
      t.string :patient_name
      t.text :diseases

      t.timestamps null: false
    end
  end
end
