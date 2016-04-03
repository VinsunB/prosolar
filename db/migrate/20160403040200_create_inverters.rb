class CreateInverters < ActiveRecord::Migration
  def change
    create_table :inverters do |t|
      t.string :inverter_type
      t.integer :qty_of_inverter
      t.integer :total_mods_to_inv
      t.integer :strings
      t.integer :avg_voltage_dc
      t.string :ocpd
      t.integer :load_center_size
      t.integer :lc_main_wire_gauge
      t.integer :kwh_total
      t.integer :commissioning_form_id

      t.timestamps
    end
  end
end
