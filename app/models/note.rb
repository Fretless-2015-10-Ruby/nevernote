class Note < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 200 }
  before_save :sanitize_body

  belongs_to :user

  private

  def sanitize_body
    self.body_html = Sanitize.fragment body_html, Sanitize::Config::RELAXED
    self.body_text = Sanitize.clean body_html.strip
  end
end
