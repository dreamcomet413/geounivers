class InstitutionsController < ApplicationController
  before_action :set_institution, only: [:show, :update, :destroy]

  # GET /institutions
  def index
    if params[:school].present?
      @institutions = Institution.find_by_school(params[:school])
    elsif params[:location].present? || params[:radius].present? || params[:limit]

    elsif params[:zip].present? || params[:radius].present? || params[:limit]
      
    else
      @institutions = Institution.first
    end
    
    render json: @institutions
  end

  # GET /institutions/1
  def show
    render json: @institution
  end

  # POST /institutions
  def create
    @institution = Institution.new(institution_params)

    if @institution.save
      render json: @institution, status: :created, location: @institution
    else
      render json: @institution.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /institutions/1
  def update
    if @institution.update(institution_params)
      render json: @institution
    else
      render json: @institution.errors, status: :unprocessable_entity
    end
  end

  # DELETE /institutions/1
  def destroy
    @institution.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution
      @institution = Institution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def institution_params
      params.require(:institution).permit(:identify_id, :name, :address, :city, :state, :zip, :phone, :opeid, :ipeds_unitid, 
                                          :web_address, :campus_id, :campus_name, :campus_address, :campus_city, :campus_state, 
                                          :campus_zip, :campus_ipeds_unitid, :accreditation_type, :agency_name, :agency_status, 
                                          :program_name, :accreditation_status, :accreditation_date_type, :periods, :last_action, 
                                          :action_date, :justification, :other_justification, :justification_url)
    end
end
