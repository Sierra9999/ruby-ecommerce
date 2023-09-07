class ProductsController < ApplicationController
  def getAllProducts
    render json:['all','the','products']
  end
end
