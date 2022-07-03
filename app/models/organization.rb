class Organization < ApplicationRecord

    has_many :users
    # join table?
    has_many :shifts, dependent: :destroy
    has_many :users_with_shifts, through: :shifts, source: :user 
end