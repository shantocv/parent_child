class KidsController < ApplicationController
    def create
        @mom = Mom.find(params[:mom_id])
        puts kids_params
        puts "----------"
        @kid = @mom.kids.create(kids_params)
        redirect_to mom_path(@mom)
    end
      
    def destroy
        @mom = Mom.find(params[:mom_id])
        puts @mom
        puts @mom.kids
        @kid = @mom.kids.find(params[:id])
        puts @kid
        @kid.destroy
        redirect_to mom_path(@mom)
    end
    
    private
    def kids_params
        params.require(:kid).permit(:name)
    end
end
