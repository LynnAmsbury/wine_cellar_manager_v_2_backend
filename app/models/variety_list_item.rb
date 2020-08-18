class VarietyListItem < ApplicationRecord
  belongs_to :wine_index_list_item

  validates :variety, :region, :producer, :vintage, :number_in_collection, presence: true
end
