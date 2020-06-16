class Task < ApplicationRecord
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search
      Task.where('task LIKE(?)', "%#{search}%")
    else
      Task.all
    end
  end
end
