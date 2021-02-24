class ProductosController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @lista=Producto.all()
  end

  def new
    @item=Producto.new
    @rubro=Rubro.all
    @marca=Marca.all
  end

  def create
    item=Producto.new
    item.nombre= params['producto']['nombre']
    item.cant_minima= params['producto']['cant_min']
    item.cant_actual= params['producto']['cant_act']
    item.precio= params['producto']['precio']
    item.activo= params['producto']['activo']
    item.marca_id= params['producto']['marca_id']
    item.rubro_id= params['producto']['rubro_id']
    item.save
    redirect_to productos_path
  end

  def edit
    @item=Producto.find(params['id'])
    @marca=Marca.all
    @rubro=Rubro.all
  end

  def update
    item=Producto.find(params['producto']['id'])
    item.nombre= params['producto']['nombre']
    item.cant_minima= params['producto']['cant_min']
    item.cant_actual= params['producto']['cant_act']
    item.precio= params['producto']['precio']
    item.activo= params['producto']['activo']
    item.marca_id= params['producto']['marca_id']
    item.rubro_id= params['producto']['rubro_id']
    item.save
    redirect_to productos_path
  end

  def destroy
    item=Producto.find(params['id'])
    item.destroy
    redirect_to productos_path
  end
end

