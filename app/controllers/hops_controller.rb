class HopsController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :show]

def index
	@hop = Hop.all
end

def new
	@hop = Hop.new
end

def create
  @hop = Hop.new(hops_params)
 
  if @hop.save
  	flash[:notice] = "Hops successfully added"
    redirect_to @hop
  else
    render 'new'
  end
end

def show
  @hop = Hop.find(params[:id])
end


def import
  Hop.import(params[:file])
  #if Hop.import(params[:file]) == nil
    #  flash[:notice] = "No file"
  #else
  redirect_to hops_path, notice: "Hops imported."
  #end

end

private
  def hops_params
    params.require(:hop).permit(:hopsName, :hopsGrown, :hopsInfo, :hopsUse, :hopsExample, :hopsAAULow, :hopsAAUHigh, :hopsSub )
  end

end
