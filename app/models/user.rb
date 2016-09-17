class User < ApplicationRecord
  has_many :gives
  has_many :wants
end
