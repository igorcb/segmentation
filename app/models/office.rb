class Office < ActiveRecord::Base
	has_many :contacts
	validates :name, presence: true, length: { maximum: 50 }
end
