# Health Check endpoint
module MnoEnterprise
  class StatusController < ApplicationController
    # Simple check to see that the app is up
    # Returns:
    #   {status: 'Ok'}
    def ping
      render json: {status: 'Ok'}
    end

    # Version check
    # Returns:
    #   {
    #     'app-version': '9061048-6811c4a',
    #     'mno-enterprise-version': '0.0.1',
    #     'env': 'test'
    #   }
    def version
      data = {
          'app-version' => MnoEnterprise::APP_VERSION,
          'mno-enteprise-version' => MnoEnterprise::VERSION,
          'env' => Rails.env
      }
      render json: data
    end
  end
end
