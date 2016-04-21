class User < ActiveRecord::Base
  has_many :reviews
  # include FriendlyId

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
