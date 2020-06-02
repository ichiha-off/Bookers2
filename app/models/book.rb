class Book < ApplicationRecord
    validates :title,
        presence: true

    validates :body,
        presence: true

    Book.create(title: nil).valid? # => false
    Book.create(body: nil).valid? # => false
end
