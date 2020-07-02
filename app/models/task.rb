class Task < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy

  def self.search(search)
    if search
      Task.where('task LIKE(?)', "%#{search}%")
    else
      Task.all
    end
  end
end
