class Post < ActiveRecord::Base
  scope :recent, -> { order("created_at DESC").limit(5) }

  before_save :titleize_title, :generate_slug

  validates_presence_of :title, :content

  private

  def titleize_title
    self.title = title.titleize
  end

  def generate_slug
    self.slug = title.downcase.gsub(/[^\w\s]/, '').gsub(/\s/, '-')
  end
end