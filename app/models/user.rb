class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #  has_and_belongs_to_many :jobs, join_table: "applications_", foreign_key: "user_id"
  has_and_belongs_to_many :applications_
  has_and_belongs_to_many :jobs, :through => :applications_

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
