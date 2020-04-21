class Toy < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_one :manufacturer
end
