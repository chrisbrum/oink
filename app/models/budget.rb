# frozen_string_literal: true

class Budget < ApplicationRecord
  before_save :set_slug

  belongs_to :user
  has_many :budget_categories, dependent: :destroy

  validates :name, presence: true # , uniqueness: true

  def set_slug
    self.slug = "#{user_id} #{name}".parameterize
  end

  def to_param
    slug
  end
end
