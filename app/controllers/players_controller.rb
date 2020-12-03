class PlayersController < ApplicationController

    def index
        # This json what i got back from a get fetch, so it is all the players
        render json: Player.all
    end

    def new
    end

    def create
        #byebug
        player = Player.create(score: params["score"], lives: params["lives"])
        #session[:player_id] = @player.id
        # Send my newly created player back to the front end as a return
        # This json what i got back from a POST fetch, so it is just the player I posted to the db
        render json: player
    end

    def destroy
        session.clear
    end

end
