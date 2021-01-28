class V1::Games::Apexlegends::PlayersController < ApplicationController

    def index
        @players = Player.all.order("created_at DESC")
        render json: @players
    end
    
end