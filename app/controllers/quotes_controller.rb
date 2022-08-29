class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def index
    @quotes = Quote.all
  end

  def show
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quotes_path, notice: "Quote was successfully created."
    else
      flash[:notice] = "Something went wrong!"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: "Quote was successfully updated."
    else
      flash[:notice] = "Something went wrong!"
      render 'edit'
    end
  end

  def destroy
    if @quote.destroy
      redirect_to quotes_path, notice: "Quote was successfully destroyed."
    else
      flash[:notice] = "Something went wrong!"
      render 'index'
    end
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end