class ConsumeApi::SaveData
    def initialize(data)
        @data = data
        @game = game
        @player = player
        @saved_stats = 0
        @stats = stats

    end

    def game
       game = Game.find_or_create_by(title: 'Apex Legends')
       return {
           id: game.id,
           title: game.title
       }
    end

    def player
        username = @data[:player]['platformUserId'].to_s
        platform = @data[:player]['platformSlug'].to_s
        avatar = @data[:player]['avatarUrl'].to_s
        # .update_attributes!()
        player = Player.find_or_create_by(username: username, platform: platform)
    end


    def stats

        @data[:stats].each do |stat|
            legend = find_legend(stat[:legendName])
            stat[:stat].each do |s|
                @saved_stats = @saved_stats +1
                stat = Stat.find_or_create_by(player_id: player.id, legend_id: legend.id, displayName: s[:displayName].to_s)
                .update_attributes!(
                    rank: s[:rank].to_s,
                    percentile: s[:percentile].to_s,
                    displayCategory: s[:displayCategory].to_s,
                    category: s[:category],
                    value: s[:value],
                    displayValue: s[:displayValue],
                    displayType: s[:displayType]
                )

            end
        end
        # 
    end

    private

    def find_legend name = ""
        Legend.find_or_create_by(game_id: game[:id], name: name)
    end

    
end