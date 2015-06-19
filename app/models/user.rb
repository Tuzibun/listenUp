class User < ActiveRecord::Base
  # Devise modules: :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  validates_presence_of :name
  before_save :assign_role

  def assign_role
  	self.role = Role.find_by name: "regular" if self.role.nil?
  end

  def admin?
  	self.role.name == "Admin"
  end

  def regular?
  	self.role.name == "Regular"
  end
end
