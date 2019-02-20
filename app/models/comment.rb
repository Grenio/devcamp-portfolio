class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :contect, presence: true, length: { in: 10..350 }

  after_create_commit { CommentBroadcastJob.perform_later(self) }
end
