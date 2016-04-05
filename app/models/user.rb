class User < ActiveRecord::Base
  has_secure_password
 attr_accessor :confirmation
   
has_many :commissioning_forms
   #EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  #validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  #validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true #password_confirmation attr
  #validates_length_of :password, :in => 6..20, :on => :create

end
