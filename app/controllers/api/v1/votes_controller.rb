class Api::V1::VotesController < ApplicationController
    
    before_action :set_picture

    def index
        @vote = @picture.vote
        render json: @vote
    end

    def create
        @vote = @picture.vote.build
        if @vote.save
            render json: @vote
        else
            render json: {error: 'Error creating vote'}
        end
    end

    def show
        @vote = Vote.find(params[:id])
        render json: @vote
    end

    private

    def set_picture
        @picture = Picture.find(params[:picture_id])
    end

    def vote_params
        params.require(:vote).permit(:picture_id, :count)
    end

end
