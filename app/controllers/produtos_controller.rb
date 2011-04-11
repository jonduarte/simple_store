class ProdutosController < ApplicationController
  before_filter :verifica_login, :except => [:show, :index]

  def index
    @produtos = Produto.all
  end

  def show
    @produto = Produto.find(params[:id])
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def update
    @produto = Produto.find(params[:id])
    if @produto.update_attributes(params[:produto])
      redirect_to @produto
    else
      render :action => "edit"
    end
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(params[:produto])
    if @produto.save
      redirect_to produtos_path
    else
      render :action => "new"
    end
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    redirect_to produtos_path
  end

  private
  def verifica_login
    if session[:logged] then
      true
    else
      redirect_to produtos_path
    end
  end
end

