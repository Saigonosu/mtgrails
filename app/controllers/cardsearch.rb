class CardController < ApplicationController
  def show
    @card = MtgCard.where(name LIKE ?, params[:card])
    @card.each do |card|
      url = "https://api.deckbrew.com/mtg/cards?multiverseid=#{card.multiverse_id}"
      Fetching(RestClient.get(url))
    Display cards 
  end

