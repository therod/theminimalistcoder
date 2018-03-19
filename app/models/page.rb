class Page
  include Recordable

  self.data_path = "app/data/pages"

  def initialize(path)
    @path = path
    filename_format = /^(.*)(\.[^.]+)$/
    @slug = File.basename(path).match(filename_format).captures.first
  end

end
