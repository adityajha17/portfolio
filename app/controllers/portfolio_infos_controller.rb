class PortfolioInfosController < ApplicationController
    def index
        @portfolio_infos = PortfolioInfo.all
    end
    def new
        @portfolio_info = PortfolioInfo.new
    end
    def create
        @portfolio_info = PortfolioInfo.new(portfolio_params)
        respond_to do |format|
            if @portfolio_info.save
                format.html { redirect_to portfolio_infos_path, notice: 'Your portfolio is now live' }
            else
                format.html { render :new }
            end
        end
    end

    def edit
        @portfolio_info = PortfolioInfo.find(params[:id])
    end

    def update
        @portfolio_info = PortfolioInfo.find(params[:id])
        respond_to do |format|
            if @portfolio_info.update(portfolio_params)
                format.html {redirect_to portfolio_infos_path, notice: 'updated successfully'}
            else
                format.html {render :edit}
            end
        end
    end

    private

    def portfolio_params
        params.require(:portfolio_info).permit(:title, :subtitle, :body)
    end


end
