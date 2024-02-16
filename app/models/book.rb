class Book < ApplicationRecord
    validates :title, :author, presence: true
    validates :price, numericality: { greater_than: 0 }, presence: true
    validates :published_date, presence: true
    validate :published_date_not_future

  private

  def published_date_not_future
    return if published_date.blank?

    if published_date > Date.today
      errors.add(:published_date, "cannot be in the future.")
    end
  end

end
