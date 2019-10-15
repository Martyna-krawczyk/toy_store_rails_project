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

  private
  def toy_params
    params.require(:toy).permit(:name, :description, :date_item_posted, :user)
  end

end


