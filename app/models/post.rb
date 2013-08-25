class Post

  attr_reader :slug

  FILENAME_FORMAT = /^(\d+-\d+-\d+)-(.*)(\.[^.]+)$/

  def initialize(path)
    @path = path
    @date_str, @slug = File.basename(path).match(FILENAME_FORMAT).captures
  end

  def id
    date.to_s + "-" + permalink[1..-1]
  end

  def permalink
    metadata[:permalink]
  end

  def to_key
    [slug]
  end

  def metadata
    load_content
    @metadata
  end

  def content
    load_content
    @content
  end

  def title
    metadata[:title] || slug.titleize
  end

  def image
    metadata[:image]
  end

  def next_post
    index = Post.all.find_index { |p| p.date == date } - 1
    if index == -1
      puts "No next post"
    else
      Post.find(index)
    end
  end

  def previous_post
    index = Post.all.find_index { |p| p.date == date } +1
    all_posts = Post.all.count
    if index == all_posts
      puts "Last post"
    else
      Post.find(index)
    end
  end

  def date
    @date ||= Time.zone.parse(metadata[:date] || @date_str).to_date
  end

  delegate :year, :month, :day, :to => :date

  def timestamp
    metadata[:timestamp] || date.to_time_in_current_zone
  end
  alias_method :last_modified, :timestamp

  def visible?
    timestamp <= Time.zone.now
  end

  def to_s
    "#{title.inspect} (#{slug})"
  end

  def content_html
    RDiscount.new(content).to_html.html_safe
  end

  class Sanitizer < HTML::WhiteListSanitizer
    self.allowed_tags -= %w(img a)
  end

  TagHelper = Class.new.extend ActionView::Helpers::TagHelper

  def summary_html
    if metadata[:summary].present?
      TagHelper.content_tag :p, metadata[:summary]
    else
      html = Sanitizer.new.sanitize(content_html)
      doc = Nokogiri::HTML.fragment(html)
      para = doc.search('p').detect { |p| p.text.present? }
      para.try(:to_html).try(:html_safe)
    end
  end

  class << self
    def all
      @@posts ||= Dir.glob(Rails.root + "app/posts/*.md").map do |filename|
        Post.new filename
      end.select(&:visible?).sort_by(&:date).reverse
    end

    def where(conditions = {})
      conditions = conditions.symbolize_keys
      conditions.assert_valid_keys :year, :month, :day, :slug, :to_param
      [:year, :month, :day].each do |key|
        conditions[key] = conditions[key].to_i if conditions[key].present?
      end
      all.select do |post|
        conditions.all? { |key, value| post.send(key) == value }
      end
    end

    def find(id)
      all[id]
    end

    def first
      all.first
    end

    def last
      all.last
    end

    def feed
      all.first(10)
    end

    def by_title
    end

    def reset!
      @@posts = nil
    end

    def latest
      all.first(3)
    end

  end

  protected

  def load_content
    @content = File.read(@path)
    if @content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
      @content = @content[($1.size + $2.size)..-1]
      @metadata = YAML.load($1)
    end
    @metadata = (@metadata || {}).with_indifferent_access
  end
end
