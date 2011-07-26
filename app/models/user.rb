class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email, :message =>"User already exists" 		
  validates_presence_of :password, :on => :create , :message => "Password can't be blank"
  validates_length_of :password, :minimum => 4, :maximum => 12
  
end
