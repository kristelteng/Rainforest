class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  before_save :strip_whitespace

  validates :comment, :presence => true
  
  private
  def strip_whitespace
    self.comment = self.comment.strip
  end
end
