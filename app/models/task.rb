class Task < ApplicationRecord
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search
      Task.where('text LIKE(?)', "%#{search}%")
    else
      Task.all
    end
  end
end
