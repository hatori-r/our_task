class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks
  has_many :comments
  has_many :like, dependent: :destroy
  has_many :liked_tasks, through: :likes, source: :task

  mount_uploader :image, ImageUploader

  def already_liked?(task)
    self.like.exists?(task_id: task.id)
  end
end
