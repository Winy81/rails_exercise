class User < ApplicationRecord
  
  has_many :stationery, dependent: :destroy

  validates_presence_of :name, message: "Name can't be blank"
  validates_presence_of :password, message: "Name can't be blank"
  validates_presence_of :password, length: { minimum: 6 }, message: "Password has to be minimum 6 character long"

  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin, :editor], multiple: false)                                      ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
