class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def search
    @products = Product.where(['name LIKE ?', "%#{params[:q]}%"])
    render "index"
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @product = Product.new
    @makers = Maker.all
    @product_types = ProductType.all
  end
  
  def create
    @product = Product.new(product_params)
    @makers = Maker.all
    @product_types = ProductType.all
    @product.save
  end
  
  def edit
    @product = Product.find(params[:id])
    @makers = Maker.all
    @product_types = ProductType.all
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path, notice: "Product was successfully updated."
    else
      render :edit
    end
  end
  
  def destroy
    @product = Product.find(params[:id]) 
    @product.destroy
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :thumbnail, :price, :release_date, :price_range, :photograph_aim, :maker_id, :product_type_id)
  end
end
