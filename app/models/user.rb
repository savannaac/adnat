class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :organization, optional: true
  has_many :shifts, dependent: :destroy
  
#   join table?
	has_many :organizations_with_shifts, through: :shifts, source: :organization

  validates_uniqueness_of :email
end
