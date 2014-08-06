class YeastsController < ApplicationController
		before_filter :authenticate_user!, :except => [:index, :show]

def index
	@yeast = Yeast.all
end

def new
	@yeast = Yeast.new
end

def create
  @yeast = Yeast.new(yeasts_params)
 
  if @yeast.save
  	flash[:notice] = "Yeasts successfully added"
    redirect_to @yeast
  else
    render 'new'
  end
end

def show
  @yeast = Yeast.find(params[:id])
end


def import
  Yeast.import(params[:file])
  #if Yeast.import(params[:file]) == nil
    #  flash[:notice] = "No file"
  #else
  redirect_to yeasts_path, notice: "Yeast imported."
  #end

end

private
  def yeasts_params
    params.require(:yeast).permit(:yeastName, :yeastFloc, :yeastAtten, :yeastTolerance, :yeastType, :yeastForm, :yeastAmount, :yeastLab, :yeastProdID, :yeastMinTemp, :yeastMaxTemp, :yeastNotes, :yeastBestFor, :yeastMaxReuse)
  end

end

#rails g model Yeast yeastName:string yeastFloc:string yeastAtten:string yeastTolerance:string yeastType:string yeastForm:string yeastAmount:integer yeastLab:string yeastProdID:string yeastMinTemp:integer yeastMaxTemp:integer yeastNotes:string yeastBestFor:string yeastMaxReuse:integer