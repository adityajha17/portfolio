class PortfolioInfosController < ApplicationController
    def index
        @portfolio_infos = PortfolioInfo.all
    end
end
