class Book < ApplicationRecord
    validates :title, :author, :status, presence: true
    enum status: [:prestado, :estante]
end
