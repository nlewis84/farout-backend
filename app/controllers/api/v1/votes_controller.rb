class Api::V1::VotesController < ApplicationController
    
    before_action :set_picture

    def update
        @vote = Vote.find(params[:picture_id])
        @vote.update(vote_params)
        @pictures = Picture.find(Picture.pluck(:id).sample(2))
        render json: @pictures
    end

    private

    def set_picture
        @picture = Picture.find(params[:picture_id])
    end

    def vote_params
        params.require(:vote).permit(:picture_id, :count)
    end

end
