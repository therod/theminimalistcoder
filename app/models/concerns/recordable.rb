module Recordable
  extend ActiveSupport::Concern

  included do
  end

  attr_reader :slug

  def initialize(path)
    @path = path
    filename_format = /^(\d+-\d+-\d+)-(.*)(\.[^.]+)$/
    @date_str, @slug = File.basename(path).match(filename_format).captures
  end

  def id
    date.strftime("%Y%m%d").to_i
  end

  def created_at
    date
  end

  def updated_at
    date
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

  def description
    metadata[:description]
  end

  def promoted?
    metadata[:promoted]
  end

  def title_color
    metadata[:title_color] || "white"
  end

  def next_record
    index = self.class.all.find_index { |p| p.date == date } - 1
    if index == -1
      puts "No next #{self.class.name}"
    else
      self.class.find(index)
    end
  end

  def previous_record
    index = self.class.all.find_index { |p| p.date == date } +1
    all_records = self.class.all.count
    if index == all_records
      puts "Last #{self.class.name}"
    else
      self.class.find(index)
    end
  end

  def date
    @date ||= Time.zone.parse(metadata[:date] || @date_str).to_date
  end

  delegate :year, :month, :day, :to => :date

  def timestamp
    metadata[:timestamp] || date.in_time_zone("Paris")
  end
  alias_method :last_modified, :timestamp

  def visible?
    timestamp <= Time.zone.now
  end

  def to_s
    "#{title.inspect} (#{slug})"
  end

  def content_html
    Kramdown::Document.new(content).to_my_html.html_safe
  end
  TagHelper = Class.new.extend ActionView::Helpers::TagHelper

  module ClassMethods
    attr_accessor :data_path

    def all
      @@records ||= Dir.glob(Rails.root + "#{self.data_path}/*.md").map do |filename|
        self.new filename
      end.select(&:visible?).sort_by(&:date).reverse
    end

    def where(conditions = {})
      conditions = conditions.symbolize_keys
      conditions.assert_valid_keys :year, :month, :day, :slug, :to_param
      [:year, :month, :day].each do |key|
        conditions[key] = conditions[key].to_i if conditions[key].present?
      end
      all.select do |record|
        conditions.all? { |key, value| record.send(key) == value }
      end
    end

    def find_by(slug)
      where(slug: slug).first
    end

    def find(id)
      all[id]
    end

    def first
      all.last
    end

    def last
      all.first
    end

    def feed
      all.first(10)
    end

    def by_title
    end

    def reset!
      @@records = nil
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
