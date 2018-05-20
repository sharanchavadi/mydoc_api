class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
        #json_response(@appointments)
        render 'index.json.rabl'
    end

    def create
        @appointment = Appointment.create(appointment_params)
        json_response(@appointment, :created)
    end

    private

    def appointment_params
        params.permit(:doctor_id, :patient_id, :diseases)
    end
    
end
