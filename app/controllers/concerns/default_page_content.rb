module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Marcin Greń | Portfolio"
    @seo_keywords = "Marcin Greń portfolio jako tekst SEO wyszukiwania"
  end
end
