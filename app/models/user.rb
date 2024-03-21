class User < ApplicationRecord
  has_many :user_works
  has_many :user_studies

  broadcasts_refreshes
end
