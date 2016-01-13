class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :login_id, :first_name
end
