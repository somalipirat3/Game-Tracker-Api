class V1::Games::Apexlegends::PlayersController < ApplicationController

    def index
        @players = Player.all
        render json: @players.map { |player| { username: player.username, platform: player.platform } }
    end

    def show
        @player  = Player.find_by_id(params[:id])
        @set_legends = []
        @legends = Legend.all.map 
        @legends.each do |legend|
            @set_legends << {name: legend.name , id: legend.id, stats: Stat.where(legend_id: legend.id, player_id: @player.id)}
        end
        render json: {
            player:  {
                username: @player.username,
                platform: @player.platform
            },
            legends: @set_legends
        }
    end

    def search
        username = params[:username]
        platform = params[:platform]
        @player = Player.find_or_create_by(username: username, platform: platform)
        PlayerWorker.perform({request_type: 'profile', platform: platform, username: username })
        render json: @player
    end

end