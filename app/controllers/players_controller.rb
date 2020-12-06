class PlayersController < ApplicationController
  def index
    # This json what i got back from a get fetch, so it is all the players
    puts('* * * Players: Index endpoint hit')
    render json: Player.all
  end

  def create
    # byebug
    puts('* * * Players: Create endpoint hit')
    player = Player.create
    # session[:player_id] = @player.id
    # Send my newly created player back to the front end as a return
    # This json what i got back from a POST fetch, so it is just the player I posted to the db
    render json: player
  end

  def update
    # byebug
    puts('* * * Players: Update endpoint hit')
    player = Player.find(params['id'])
    player.update(id: params['id'], name: params['name'])
    render json: player
  end

  # def destroy
  #     puts("*** Controller: destroy endpoint hit")
  #     session.clear
  # end

  # def edit
  #     #byebug
  #     puts("*** Controller: edit endpoint hit")
  #     # player.update(name: params["name"], lives: params["lives", score: params["score"]])
  #     render json:player
  # end

  # def new
  #     puts("*** Controller: new endpoint hit")
  # end
end
