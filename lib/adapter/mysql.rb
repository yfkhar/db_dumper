module DbDumper
  class Mysql
    def initialize(config = Configurator.new)
      @config = config
    end
  end
end