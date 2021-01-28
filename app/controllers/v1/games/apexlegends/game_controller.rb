class V1::Games::Apexlegends::GameController < ApplicationController

    def index
        @game = Game.find_by_title("Apex Legends")
        render json: { 
            game: @game,
            legends: @game.legends
        }, stats: 200
    end
    
    def search

    end

    def show
        @game = Game.find_by_id(params[:id])
        render json: @game
    end
end