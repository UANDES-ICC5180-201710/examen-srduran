class User < ApplicationRecord
  validates :first_name, presence: true, length: {in:3..30}
  validates :last_name, presence: true, length: {in:3..30}
  validates :email, presence: true, length: {maximum: 50}, uniqueness: true
  validates_format_of :email, :with => Devise::email_regexp
  validates :password, presence: true, length: {minimum: 8}, confirmation: true
end
