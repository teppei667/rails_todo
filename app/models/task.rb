class Task < ApplicationRecord
  before_validation :set_nameless_name

  validates :name, presence: true, length: { maximum: 30 }
  validate :validate_name_not_including_comma

  private

  def validate_name_not_including_comma
    errors.add(:name, 'にカンマを含めることができません') if name&.include?(',')
  end

  def set_nameless_name
    self.name = 'non title' if name.blank?
  end
end
