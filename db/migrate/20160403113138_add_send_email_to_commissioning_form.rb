class AddSendEmailToCommissioningForm < ActiveRecord::Migration
  def change
    add_column :commissioning_forms, :send_email, :boolean, default: false
  end
end
