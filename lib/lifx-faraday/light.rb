module LifxFaraday
  class Light
    include Api::Connection.new LifxFaraday::API

    def initialize(selector: 'all')
      @selector = selector
    end

    def set_state(state_options)
      raise 'needs a selector' unless selector && selector.to_s != ''
      connection.put "lights/#{selector}/state", state_options
    end

    private

    attr_reader :selector
  end
end

