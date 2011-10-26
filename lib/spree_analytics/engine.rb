module SpreeAnalytics

  class Engine < Rails::Engine
    engine_name 'spree_analytics'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end

  #Configuration
  mattr_accessor :app_id, :site_id, :token, :api_url, :data_url

  self.api_url = 'https://api.jirafe.com/v1'
  self.data_url = 'data.jirafe.com'

  def self.configured?
    app_id.present? and site_id.present? and token.present?
  end

end
