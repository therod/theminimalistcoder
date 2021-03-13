module Recordable
  extend ActiveSupport::Concern

  included do
  end

  attr_reader :slug, :path

  def initialize(path)
    @path = path
    filename_format = /^(\d+-\d+-\d+)-(.*)(\.[^.]+)$/
    @date_str, @slug = File.basename(path).match(filename_format).captures
  end

  def id
    date.strftime('%Y%m%d').to_i
  end

  def date
    created_at
  end

  def created_at
    Time.zone.parse(metadata[:created_at] || @date_str)
  end

  def updated_at
    Time.zone.parse(metadata[:updated_at] || File.mtime(path).to_s)
  end

  def status
    metadata[:status]
  end

  def to_key
    [slug]
  end

  def og_image
    metadata[:og_image] || nil
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
    metadata[:title_color] || 'white'
  end

  def next_record
    index = self.class.all.find_index { |p| p.date == date } - 1
    if index == -1
      puts 'No next #{self.class.name}'
    else
      self.class.find(index)
    end
  end

  def previous_record
    index = self.class.all.find_index { |p| p.date == date } + 1
    all_records = self.class.all.count
    if index == all_records
      "Last #{self.class.name}"
    else
      self.class.find(index)
    end
  end

  def visible?
    metadata[:published]
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
      key = "@#{self.name.tableize}"
      return instance_variable_get(key) if instance_variable_defined?(key)
      results = Dir.glob(Rails.root + "#{self.data_path}/*.md").map do |filename|
        self.new filename
      end.select(&:visible?).sort_by(&:created_at).reverse
      instance_variable_set key, results
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
