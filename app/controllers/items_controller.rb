class ItemsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @items = Item.where.not(archived: true)
    end

    def show
        @item = Item.find(params[:id])
    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])

        if @item.update(item_params)
            redirect_to items_path()
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def delete_item
        @item = Item.find(params[:id])
    end

    def destroy
        puts "DESTROY!!!!!!!!!!!"
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to items_path
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        @item.archived = false

        if @item.save
            redirect_to items_path, notice: "Item was successfully added."
        else
            render :new, status: :unprocessable_entity
        end
    end

    def item_params
        params.require(:item).permit(:name, :description, :price, :calories, :eightysix, :archived, :category, :photo_url)
    end
end
