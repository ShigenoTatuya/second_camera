class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_makers, only: [:new, :edit]
  before_action :set_product_types, only: [:new, :edit]
  # ログインしたユーザ以外はproductの登録、編集、削除ができない。
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # 管理者以外はproductの登録、編集、削除ができない。
  before_action :redirect_unless_admin!, only: [:new, :edit, :update, :destroy]
  
  def index
    @products = Product.all
  end
  
  # enum photograph_aimごとの絞り込み検索
  def other_aim
    @products = Product.where(photograph_aim: :other)
    render :index
  end
  
  def family
    @products = Product.where(photograph_aim: :family_and_children)
    render :index
  end
  
  def travel
    @products = Product.where(photograph_aim: :travel_and_landscape)
    render :index
  end
  
  def bird
    @products = Product.where(photograph_aim: :aircraft_and_birds_and_sports)
    render :index
  end
  
  def portrait
    @products = Product.where(photograph_aim: :portrait)
    render :index
  end
  
  def all_round
    @products = Product.where(photograph_aim: :all_round)
    render :index
  end
  # enum price_rangeごとに検索
  def price_range
    @products = Product.where(price_range: params[:price_range])
    render :index
  end
  
  # 外部キーでメーカーごとに検索
  def maker
    @maker = Maker.find_by(name: params[:name])
    if @maker
      @products = @maker.products
    else
      @products = []
    end
    render :index
  end
  # 外部キーで製品の種類ごとに検索
  def product_type
    @product_type = ProductType.find_by(name: params[:name])
    if @product_type
      @products = @product_type.products
    else
      @products = []
    end
    render :index
  end
  
  # productの名前検索
  def search
    @products = Product.where(['name LIKE ?', "%#{params[:q]}%"])
    render "index"
  end
  
  def show
    
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to root_path, notice: '製品情報が登録されました。'
    else
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
    if @product.update(product_params)
      redirect_to root_path, notice: '製品情報が更新されました。'
    else
      render :edit
    end
  end
  
  def destroy
    @product.destroy
    redirect_to root_path, notice: '製品情報が削除されました。'
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :thumbnail, :price, :release_date, :price_range, :photograph_aim, :maker_id, :product_type_id)
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
  
  def set_makers
    @makers = Maker.all
  end
  
  def set_product_types
    @product_types = ProductType.all
  end
  
  def redirect_unless_admin!
    redirect_to root_path unless current_user&.admin?
  end
  
end
