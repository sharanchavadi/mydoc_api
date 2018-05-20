class PatientsController < ApplicationController
    
    def index
    	@patients = Patient.all
        json_response(@patients)
    end

    def create
        @patient = Patient.create(patient_params)
        json_response(@patient, :created)
    end

    private
    
    def patient_params
        params.permit(:name, :phone_number)
    end

end
