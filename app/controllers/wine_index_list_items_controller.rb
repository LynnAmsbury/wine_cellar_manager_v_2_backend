class WineIndexListItemsController < ApplicationController
  before_action :find_wineIndexListItem_by_id, only: [:show, :update, :destroy]
  
  def index
    @wineIndexListItems = WineIndexListItem.all
    render json: @wineIndexListItems
  end
  
  def show
    render json: @wineIndexListItem
  end
  
  def create
    @wineIndexListItem = WineIndexListItem.create(wineIndexListItem_params)
    render json: @wineIndexListItem
  end
  
  def update
    @wineIndexListItem.update(wineIndexListItem_params)
    render json: @wineIndexListItem
  end
  
  def destroy
    @wineIndexListItem.destroy
    redirect_to action: 'index'
  end
  
  private
  
  def wineIndexListItem_params
    params.require(:wineIndexListItem).permit(:name, :user_id)
  end
  
  def find_wineIndexListItem_by_id
    @wineIndexListItem = WineIndexListItem.find(params[:id])
  end
    
end
