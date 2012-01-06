# overriden to avoid all the queries in the core OverviewController
module Spree
  class Admin::OverviewController < Admin::BaseController

    def index
    end

  end
end
