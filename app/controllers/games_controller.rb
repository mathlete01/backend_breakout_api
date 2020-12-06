class GamesController < ApplicationController
  def index
    # This json what i got back from a get fetch, so it is all the players
    puts('* * * Games: Index endpoint hit')
    render json: Game.all
  end

  def create
    # byebug
    puts('* * * Games Create endpoint hit')
    game = Game.create(player_id: params['player_id'])
    # session[:player_id] = @player.id
    # Send my newly created player back to the front end as a return
    # This json what i got back from a POST fetch, so it is just the game I posted to the db
    render json: game
  end

  def update
    puts('* * * Games Update endpoint hit')
    #byebug
    #player = Player.find_or_create_by(params[:player_id])
    #puts("Games Endpoint: player = ${player}")
    #puts("Games Endpoint: player.id = ${player.id}")
    # then when I update the game, add in the player id
    
    game = Game.find(params['id'])
    #game.update(player_id: player.id, keys_pressed: params['keys_pressed'], score: params['score'])
    puts("Games Endpoint: params['score'] = ${params['score']}")
    #game.update(player_id: player.id, score: params['score'])
    game.update(player_id: params['player_id'], score: params['score'])
    render json: game
  end
end
