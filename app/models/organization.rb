class Organization < ApplicationRecord

    has_many :users
    # has_many :shifts, through: :user 
    # join table?
    # has_many :users_with_shifts, through: :shifts, source: :user 
end