class Restaurant < ApplicationRecord
#   has_many :reviews
#   validates :phone_number, presence: true
#   validates :name, :address, :category, presence: true
#   validates :category, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
# end

has_many :reviews, dependent: :destroy
validates :name, presence: true
validates :address, presence: true
validates :phone_number, presence: true
validates :category, presence: true, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
end
