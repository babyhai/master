require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MasterRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  # 下面的命令是不希望生成controller 自动创建对应这个controller的css js文件
    config.gemerators do |generator|
      generator.assets false    # css  js 文件
      generator.test_framework false # 不希望在生成model controller时候不生成对应的test文件
    end


  end
end
