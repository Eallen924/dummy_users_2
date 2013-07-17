class User < ActiveRecord::Base
  validates :full_name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true

  # e.g., User.authenticate('jesse@devbootcamp.com', 'apples123')
  def self.authenticate(email, password)
     user = self.find_by_email(email)
     if user.password == password
      user
    else
      nil
    end
  end
end

