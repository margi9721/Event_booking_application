class User < ApplicationRecord
    has_many :events, through: :bookings, dependent: :destroy
    has_many :bookings, dependent: :destroy
    has_and_belongs_to_many :roles
end
