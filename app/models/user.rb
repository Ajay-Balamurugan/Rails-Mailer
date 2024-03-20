class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :lockable, :maximum_attempts => 3, :unlock_strategy => :time, :unlock_in => 1.minute

  has_many :cities, dependent: :destroy
end
