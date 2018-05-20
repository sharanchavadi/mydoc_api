collection @appointments
attributes :diseases
node(:doctor_name) { |appointment| appointment.doctor.name }
node(:patient_name) { |appointment| appointment.patient.name }