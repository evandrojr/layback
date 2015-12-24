require 'logging'

class Sl

  @@l = Logging.logger['layback.log']
  @@l.level = :debug
  @@l.add_appenders \
      Logging.appenders.stdout,
      Logging.appenders.file('layback.log')

  def self.error(m)
    @@l.error m
  end

  def self.info m
    @@l.info m
  end

  def self.debug m
    @@l.debug m
  end

end
