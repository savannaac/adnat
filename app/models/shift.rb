class Shift < ApplicationRecord

    belongs_to :user

    # if join table, would also
    belongs_to :organization
end