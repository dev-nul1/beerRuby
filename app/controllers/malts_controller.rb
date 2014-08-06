class MaltsController < ApplicationController
		before_filter :authenticate_user!, :except => [:index, :show]

def index
	@malt = Malt.all
end

def new
	@malt = Malt.new
end

def create
  @malt = Malt.new(hops_params)
 
  if @malt.save
  	flash[:notice] = "Malts successfully added"
    redirect_to @malt
  else
    render 'new'
  end
end

def show
  @malt = Malt.find(params[:id])
end


def import
  Malt.import(params[:file])
  #if Malt.import(params[:file]) == nil
    #  flash[:notice] = "No file"
  #else
  redirect_to malts_path, notice: "Malts imported."
  #end

end

private
  def malts_params
    params.require(:malt).permit(:malt_name, :malt_lovibond, :malt_info, :malt_category, :malt_yield, :malt_origin, :malt_supplier, :malt_type )
  end

end




#maltName:string maltLovibond:string maltInfo:string maltCategory:string maltYield:string maltOrigin:integer maltSupplier:integer maltType:string