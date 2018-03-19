class Commonplace
  include Recordable

  self.data_path = "app/data/commonplace"

  def initialize(path)
    @path = path
    filename_format = /^(.*)(\.[^.]+)$/
    @slug = File.basename(path).match(filename_format).captures.first
  end

  def image_url
    metadata[:image_url]
  end
end
