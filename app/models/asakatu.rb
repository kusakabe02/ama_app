class Asakatu < ApplicationRecord
  has_many :task, dependent: :destroy
  accepts_nested_attributes_for :task,reject_if: :all_blank, allow_destroy: true
  validates :title, presence: true
end
