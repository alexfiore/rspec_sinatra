class Menu < ActiveRecord::Base
  has_many :menu_items

  validates :name, :start_at, :presence => true
  validate :end_date_must_be_after_start_date
  before_save :titilize_title

  def end_date_must_be_after_start_date
    if end_at
      end_at > start_at
      errors.add(:end_date, "can't be after start date")
    end
  end

  private
  def titilize_title
    self.name.gsub! '-', ' '
  end
end
