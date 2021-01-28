class V1::Games::Apexlegends::PlayersController < ApplicationController

    def index
        @players = Player.all
        render json: @players
    end

    def search
        username = params[:username]
        platform = params[:platform]
        api = ConsumeApi.apexlegends_data({
            request_type: 'profile',
            platform: platform,
            username: username 
        })
        render json: api
    end

end