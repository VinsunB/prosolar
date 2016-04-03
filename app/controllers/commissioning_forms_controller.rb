class CommissioningFormsController < ApplicationController
before_filter :login_required
  before_action :set_commissioning_form, only: [ :update, :destroy]

  
  def index
    @commissioning_forms = CommissioningForm.all
  end

  def show
    @commissioning_form = CommissioningForm.includes([:mods,:inverters]).find(params[:id])
  end

  
  def new
    @commissioning_form = CommissioningForm.new
  @commissioning_form.mods.build
   @commissioning_form.inverters.build
  end

  
  def edit
  @commissioning_form = CommissioningForm.includes([:mods,:inverters]).find(params[:id])
  end

  
  def create
    @commissioning_form = CommissioningForm.new(commissioning_form_params)


      if @commissioning_form.save
       flash[:notice] = "Commissioning form was successfully created."
      redirect_to @commissioning_form 
       
      else
      flash.now[:errors] = "Error in creating form"
       render :new 
     end
    end
  

  def update
    if @commissioning_form.update(commissioning_form_params)
     flash[:notice] = "Commissioning form was successfully created."
    redirect_to @commissioning_form
      else
      flash.now[:errors] = "Error in updating form"
      render :edit 
      
      end
    end
  

  
  def destroy
    @commissioning_form.destroy
        flash[:notice] = 'Commissioning form was successfully destroyed.'
     redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commissioning_form
      @commissioning_form = CommissioningForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commissioning_form_params
      params.require(:commissioning_form).permit(:commissioning_date, :employee_name, :job, :customer_name, :job_type, :system_size, :location, :physical_address, :mailing_address, :parcel_id, :customer_phone, :customer_email, :permit, :installation_completed, :net_meter_installed, :wapa_account, :project_notes,
       mods_attributes: [:mod_type, :qty, :commissioning_form_id],
       inverters_attributes: [:inverter_type, :qty_of_inverter, :total_mods_to_inv, :strings, :avg_voltage_dc, :ocpd, :load_center_size, :lc_main_wire_gauge, :kwh_total, :commissioning_form_id])
    end
end
