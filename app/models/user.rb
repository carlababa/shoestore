class User < ActiveRecord::Base

  # include FriendlyId

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
