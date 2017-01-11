class DecksController < ApplicationController

  def index
    @alldecks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)
    @deck.save
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
  end

  private

    def deck_params
      params.require(:deck).permit(:name)
    end
end