class V1::Games::Apexlegends::PlayersController < ApplicationController

    def index
        @players = Player.all
        render json: @players
    end

end