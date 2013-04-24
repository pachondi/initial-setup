class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :login, :password, :password_confirmation
  
  has_many :groups  
end
