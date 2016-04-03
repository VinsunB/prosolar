require 'test_helper'

class CommissioningFormsControllerTest < ActionController::TestCase
  setup do
    @commissioning_form = commissioning_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commissioning_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commissioning_form" do
    assert_difference('CommissioningForm.count') do
      post :create, commissioning_form: { commissioning_date: @commissioning_form.commissioning_date, customer_email: @commissioning_form.customer_email, customer_name: @commissioning_form.customer_name, customer_phone: @commissioning_form.customer_phone, employee_name: @commissioning_form.employee_name, installation_completed: @commissioning_form.installation_completed, job: @commissioning_form.job, location: @commissioning_form.location, mailing_address: @commissioning_form.mailing_address, net_meter_installed: @commissioning_form.net_meter_installed, parcel_id: @commissioning_form.parcel_id, permit: @commissioning_form.permit, physical_address: @commissioning_form.physical_address, project_notes: @commissioning_form.project_notes, system_size: @commissioning_form.system_size, type: @commissioning_form.type, wapa_account: @commissioning_form.wapa_account }
    end

    assert_redirected_to commissioning_form_path(assigns(:commissioning_form))
  end

  test "should show commissioning_form" do
    get :show, id: @commissioning_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commissioning_form
    assert_response :success
  end

  test "should update commissioning_form" do
    patch :update, id: @commissioning_form, commissioning_form: { commissioning_date: @commissioning_form.commissioning_date, customer_email: @commissioning_form.customer_email, customer_name: @commissioning_form.customer_name, customer_phone: @commissioning_form.customer_phone, employee_name: @commissioning_form.employee_name, installation_completed: @commissioning_form.installation_completed, job: @commissioning_form.job, location: @commissioning_form.location, mailing_address: @commissioning_form.mailing_address, net_meter_installed: @commissioning_form.net_meter_installed, parcel_id: @commissioning_form.parcel_id, permit: @commissioning_form.permit, physical_address: @commissioning_form.physical_address, project_notes: @commissioning_form.project_notes, system_size: @commissioning_form.system_size, type: @commissioning_form.type, wapa_account: @commissioning_form.wapa_account }
    assert_redirected_to commissioning_form_path(assigns(:commissioning_form))
  end

  test "should destroy commissioning_form" do
    assert_difference('CommissioningForm.count', -1) do
      delete :destroy, id: @commissioning_form
    end

    assert_redirected_to commissioning_forms_path
  end
end
