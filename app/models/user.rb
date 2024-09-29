class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :registerable,
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  
  enum user_type: [:super_user, :staff_user]
  belongs_to :role, optional: true

  before_save :manage_role

  def manage_role
    if self.staff_user?
      self.role_id = 2
    end
  end

end
