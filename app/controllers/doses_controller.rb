class DosesController < ApplicationController

def new
    @dose = Dose.new
end

def create
    @dose = Dose.new(doses_params)
    if @dose.save
     redirect_to @dose
    else 
        render :new
    end
end

def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to root_path
end

private
    def doses_params
      params.require(:dose).permit(:description)
    end

end
