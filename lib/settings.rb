class Settings
  @dir = ""
  @langs = []

  def initialize(langs = [])
    @langs = langs
  end

  def create_settings
    File.open(Settings.path, 'w') do |f|
      f.write(@langs.join("\n"))
      f.write("\n")
      f.close
    end
  end

  class << self
    attr_accessor :dir, :langs

    def default_languages
      langs = []
      File.open(path).each_line do |l|
        langs << l.delete("\n")
      end

      langs
    end

    def path
      "#{Dir.home}/.layback"
    end
  end
end
