class Group < ActiveRecord::Base
  attr_accessible :name, :user_id, :access, :description, :active_level
  belongs_to :user
  
  # validates :user, :presence =>true : checks whether the user is a valid record.
  # validates :user_id, :presence =>true : checks whether the id is present and not whether use is valid or not
  # easy to check presence with just user and let rails take everything. However, we dont remove users
  # or groups from the database tables (hopefully) and only set them active or inactive.
  # So if we have a way to do validates presence on a set of attributes and not just on whether the
  # record is in table, it would be awesome 
  # @todo: Look at conditional validation :if and :unless, conditional methods, conditional validators 
  # or just do an AJAX check before creation or update. No need to post everything back. 
  validates :user_id, :presence =>true
  
end
