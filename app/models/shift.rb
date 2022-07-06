class Shift < ApplicationRecord

    belongs_to :user

    # if join table, would also
    belongs_to :organization

    # allows shift to access user name attribute
    delegate :name, to: :user, prefix: true
    
    # allows shift to access organization hourly rate attribute
    delegate :hourly_rate, to: :organization, prefix: true

    scope :by_recently_created, -> { order(created_at: :desc) }
end