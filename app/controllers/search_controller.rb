class SearchController < ApplicationController
  def index
    @search = Search.new(search_params[:q])
  end

private
  def search_params
    params.require(:commit)
    params.require(:controller)
    params.require(:action)
    params.permit(:q)
  end
end
