class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  # La ligne ci-dessus permet de valider que chaque username est unique
end
