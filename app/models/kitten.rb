class Kitten < ApplicationRecord
	validates :name, presence: true, length: { maximum:50 }
	validates :age, presence: true, numericality: { only_integer: true }
	validates :softness, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 11 } 
	validates :cuteness, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 11 }
end
