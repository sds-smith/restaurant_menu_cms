class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.where.not(archived: true)
    render json: @items
  end
end
