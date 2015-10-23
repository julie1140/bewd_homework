class InventoriesController < ApplicationController
  def index
    @saladingredients=Inventory.all
  end
end
