class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render json: @cats
    end
  
    def show
      @cat = Cat.find(params[:id])
      render json: @cat
    end
    
    def create
        # Create a new cat
        @cat = Cat.create(cat_params)
        if @cat.valid?
            render json: @cat
           else
             render json: @cat.errors, status: :unprocessable_entity
           end
    end

    def update
      @cat = Cat.find(params[:id])
      @cat.update(cat_params)
      if @cat.valid?
          render json: @cat
      else 
          render json: @cat.errors
      end
  end

  def destroy
      @cat = Cat.find(params[:id])
      if @cat.destroy
          render json: @cat
      else
          render json: @cat.errors
      end
  end


    
    # Handle strong parameters, so we are secure
    private
    def cat_params
    params.require(:cat).permit(:name, :age, :hobby)
    end
end
