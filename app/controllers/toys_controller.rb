class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.create(toy_params)
    redirect_to root_path
  end

  def show
    @toy = Toy.find(params[:id])
  end

  def edit
    @toy = Toy.find(params[:id])
    render :edit
  end

  def update
      @toy = Toy.find( params[:id])
      if @toy.update(toy_params)
        redirect_to show_toy_path(@toy), notice: 'Toy was successfully updated.'
      else
        render :edit
      end
  end

  def delete

  end

  def destroy
    @toy = Toy.find(params[:id])
    if @toy.destroy
    redirect_to root_path, notice: 'toy was successfully destroyed.' 
    else
      render :delete
    end
  end

  private
  def toy_params
    puts "_______________________"
    p params
    puts "_______________________"
    params.require(:toy).permit(:name, :description, :date_item_posted, :user, :id, :picture)
  end
end


  

