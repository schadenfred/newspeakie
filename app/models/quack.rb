class Quack < ApplicationRecord
  belongs_to :whistle

  validates :content, presence: true, uniqueness: {
    case_sensitve: false,
    scope: :whistle
  }
end
