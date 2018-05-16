class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  belongs_to :user
  
  validates :title, presence: true,
                      length:{minimum: 6}

  validates :body, presence: true,
                     length:{minimum: 15}
end
