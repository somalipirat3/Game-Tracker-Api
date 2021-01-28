module ConsumeApi

    def self.apexlegends_data options = {}
        api = Tracker.new({username: options[:username], platform: options[:platform]})
        
        segments_recoreds = 0
        stats = []

        api.segments.map{|seg|
            segments_recoreds =+ 1
            stats << seg
        }

        save_data =  SaveData.new({player: api.player, stats: stats})
        # SaveData.new({player: api.player, stats: stats})
        return save_data
    end

end