class Account < ApplicationRecord
	belongs_to :user
	validates :bank, presence: true
	validates :agency, presence: true
	validates :number, presence: true
end
