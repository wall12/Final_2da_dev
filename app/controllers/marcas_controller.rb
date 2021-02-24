class MarcasController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @lista=Marca.all()
  end

  def new
    @item=Marca.new
  end

  def create
    item=Marca.new
    item.nombre= params['marca']['nombre']
    item.save
    redirect_to marcas_path
  end

  def edit
    @item=Marca.find(params['id'])
  end

  def update
    item=Marca.find(params['marca']['id'])
    item.nombre= params['marca']['nombre']
    item.save
    redirect_to marcas_path
  end

  def destroy
    item=Marca.find(params['id'])
    item.destroy
    redirect_to marcas_path
  end
end
