class User < ApplicationRecord
	validates :first_name, presence: true
	validates :skypeid, presence: true
	validates :password, presence: true
end
