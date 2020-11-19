class Comment < ApplicationRecord
  before_save :check_author
  belongs_to :item

  #check if the author is left blank
  #if the author is left blank assign it the value 'anon'
  def check_author
    if self.author.blank?
      self.author = 'anon'
    end
  end
end
