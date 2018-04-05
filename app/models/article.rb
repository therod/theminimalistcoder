class Article
  include Recordable

  self.data_path = "app/data/articles"

  def visible?
    created_at <= Time.zone.now
  end
end
