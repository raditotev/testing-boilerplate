module SitePrism
  class Page
    def self.inherited(subclass)
      Pages.collect_pages(subclass)
    end
  end
end
