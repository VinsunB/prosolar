class CreateCommissioningForms < ActiveRecord::Migration
  def change
    create_table :commissioning_forms do |t|
      t.string :commissioning_date
      t.string :employee_name
      t.string :job
      t.string :customer_name
      t.string :job_type
      t.integer :system_size
      t.string :location
      t.string :physical_address
      t.string :mailing_address
      t.string :parcel_id
      t.integer :customer_phone
      t.string :customer_email
      t.string :permit
      t.string :installation_completed
      t.string :net_meter_installed
      t.string :wapa_account
      t.text :project_notes
      t.integer :user_id
      t.timestamps
    end
  end
end
