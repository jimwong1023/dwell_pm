class Project < ActiveRecord::Base

  has_many :assignments, dependent: :destroy
  has_many :users, :through => :assignments

  validates :client_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  accepts_nested_attributes_for :assignments
end