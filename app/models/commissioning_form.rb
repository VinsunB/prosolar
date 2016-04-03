class CommissioningForm < ActiveRecord::Base
has_many :mods
has_many :inverters
accepts_nested_attributes_for :mods, :inverters

end
