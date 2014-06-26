class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :patients

  before_save :set_name, :set_role

  def set_name
    self.name = first_name + ' ' + last_name
  end

  def set_role
    self.role = 'Resident'
  end
end
