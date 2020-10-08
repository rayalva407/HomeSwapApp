class SwapsController < ApplicationController
  def new
    @swap = Swap.new
  end

  def create
    @swap = Swap.new(swaps_params)
    if @swap.save
      redirect_to home_swap_path(@swap)
    else
      render :new
    end
  end

  private
  def swaps_params
    params.require(:swap).permit(:location)
  end
end