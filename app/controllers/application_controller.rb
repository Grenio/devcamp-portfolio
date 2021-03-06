class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
end

module GrenioViewTool
  class Renderer
    def self.copyright name, message
      "&copy; #{Time.now.year} | <b>#{name}</b> #{message}".html_safe
    end
  end
end
