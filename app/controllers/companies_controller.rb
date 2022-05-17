class CompaniesController < ApplicationController
    def index
      scope = Company.all
      @items_total = scope.count
      @companies = scope
      # render json: { companies: @companies }, status: 200
    end
    
    def show
      @company = Company.find_by(id: params[:id])
    
      unless @company
        render json: @company, status: 500
      end
    end
end
