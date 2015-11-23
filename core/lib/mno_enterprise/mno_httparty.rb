require 'httparty'

module MnoEnterprise
  class MnoHttparty
    include HTTParty
    base_uri "#{MnoEnterprise.mno_api_host}/api/mnoe/v1"
    attr_accessor :opts

    def initialize(u = MnoEnterprise.tenant_id, p = MnoEnterprise.tenant_key)
      @auth = {username: u, password: p}
    end

    def api_post(path, options = {})
      options.merge!({basic_auth: @auth})
      body_copy = options.delete(:body)
      options.merge!({body: {data: body_copy}})
      # binding.pry
      self.class.post(path, options)
    end

    def api_get(path, options = {})
      options.merge!({basic_auth: @auth})
      self.class.get(path, options)
    end
  end
end
