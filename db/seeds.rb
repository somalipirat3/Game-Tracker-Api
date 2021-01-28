game = Game.find_or_create_by(title: 'Apex Legends')
puts "Game: #{game.title}"

player = Player.find_or_create_by(username: 'strenger_11', platform: 'psn')
puts "Player: #{player.username}"

legends = [
    {name: 'Bangalore', game_id: game.id},
    {name: 'Bloodhound', game_id: game.id},
    {name: 'Caustic', game_id: game.id},
    {name: 'Crypto', game_id: game.id},
    {name: 'Horizon', game_id: game.id},
    {name: 'Lifeline', game_id: game.id},
    {name: 'Loba', game_id: game.id},
    {name: 'Mirage', game_id: game.id},
    {name: 'Octane', game_id: game.id},
    {name: 'Pathfinder', game_id: game.id},
    {name: 'Rampart', game_id: game.id},
    {name: 'Revenant', game_id: game.id},
    {name: 'Wattson', game_id: game.id},
    {name: 'Wraith', game_id: game.id}
]

legends.each do |record|
    legend = Legend.find_or_create_by(record)
    puts "Legend: #{legend.name}"
end
