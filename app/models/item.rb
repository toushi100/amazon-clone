class Item < ApplicationRecord
    has_one_attached :cover
    has_many_attached :uploads
end
