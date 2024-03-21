class UserStudy < ApplicationRecord
  belongs_to :user

  broadcasts_refreshes
end
