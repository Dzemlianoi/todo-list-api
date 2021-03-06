class Task < ApplicationRecord
  acts_as_list scope: :project, top_of_list: 0

  belongs_to :project
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validate :due_date_cannot_be_in_the_past, if: :due_date_changed?

  scope :ordered, -> { order(position: :asc) }

  private

  def due_date_cannot_be_in_the_past
    errors.add(:due_date, I18n.t('task.validation.due_date_error')) if due_date.present? && due_date < Time.zone.today
  end
end
