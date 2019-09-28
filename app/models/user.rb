class User < ApplicationRecord
  # Include default devise modules. Others available are :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable

  validates_presence_of :first_name, :last_name, :phone_number, require: true
end
