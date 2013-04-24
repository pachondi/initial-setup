class Group < ActiveRecord::Base
  attr_accessible :name, :user_id, :access, :description, :active_level
  belongs_to :user
  validates :user_id, :presence =>true
end
