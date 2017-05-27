module Api
  class Connection < Module
    def initialize(connection)
      define_method 'connection' do
        connection
      end
    end
  end
end
