class Whistle < ApplicationRecord

  belongs_to :duckspeak

  has_many :quacks
  accepts_nested_attributes_for :quacks

  validates :singular_name, presence: true, uniqueness: {
    case_sensitve: false,
    scope: :duckspeak
  }
end
