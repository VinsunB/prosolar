class AddDraftToCommissioningForm < ActiveRecord::Migration
  def change
    add_column :commissioning_forms, :draft, :boolean, default: false
  end
end
