class RubrosController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @lista=Rubro.all()
  end

  def new
    @item=Rubro.new
  end

  def create
    item=Rubro.new
    item.nombre= params['rubro']['nombre']
    item.perecedero= params['rubro']['perecedero']
    item.save
    redirect_to rubros_path
  end

  def edit
    @item=Rubro.find(params['id'])
  end

  def update
    item=Rubro.find(params['rubro']['id'])
    item.nombre= params['rubro']['nombre']
    item.perecedero= params['rubro']['perecedero']
    item.save
    redirect_to rubros_path
  end

  def destroy
    item=Rubro.find(params['id'])
    item.destroy
    redirect_to rubros_path
  end
end
