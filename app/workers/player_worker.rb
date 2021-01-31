class PlayerWorker
    include Sidekiq::Worker

    def perform(data)
        api = ConsumeApi.apexlegends_data(data)
    end
end