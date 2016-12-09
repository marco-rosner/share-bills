class Bill < ApplicationRecord
	belongs_to :user
	validates :value, presence: true
	validates :place, presence: true
end
