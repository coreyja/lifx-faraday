module LifxFaraday
  API = Faraday.new 'https://api.lifx.com/v1' do |c|
    # Request
    c.basic_auth(ENV.fetch('LIFX_TOKEN'), '')
    c.use Faraday::Request::UrlEncoded

    # Adapter
    c.use Faraday::Adapter::NetHttp
  end
end
