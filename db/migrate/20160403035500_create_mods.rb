class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :mod_type
      t.integer :qty
      t.integer :commissioning_form_id

      t.timestamps
    end
  end
end
