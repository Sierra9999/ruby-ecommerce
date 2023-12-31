class ProductsController < ApplicationController
  def getAllProducts
    json_data = File.read('db/products.json') 
    puts json_data
    @products = JSON.parse(json_data)
    respond_to do |format|
      format.html
      format.json { render json: @products }
    end
  end
end
