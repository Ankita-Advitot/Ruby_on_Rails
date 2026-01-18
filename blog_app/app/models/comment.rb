class Comment < ApplicationRecord
  belongs_to :blog

  validates :body, presence: true
  validate :blog_must_be_published
  private

  def blog_must_be_published
    return if blog&.published?

    errors.add(:blog, "must be published to allow comments")
  end

end
