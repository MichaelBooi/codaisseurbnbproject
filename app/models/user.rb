class User < ApplicationRecord
  has_many :rooms
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile

  def has_profile?
    profile.present?
  end

  def full_name
    profile.full_name
  end
end
