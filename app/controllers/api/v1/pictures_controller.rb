class Api::V1::PicturesController < ApplicationController

    def index
        @pictures = Picture.find(Picture.pluck(:id).sample(2))
        render json: @pictures
    end

    def create
        @picture = Picture.new(picture_params)
        if @picture.save
            render json: @picture
        else
            render json: {error: 'Error creating picture'}
        end
    end

    def show
        @picture = Picture.find(params[:id])
        render json: @picture
    end

    def top
        @pictures = Picture.top.limit(5)
        render json: @pictures
    end

    def newest
        binding.pry
        @picture = Picture.newest.limit(1)
        render json: @picture
    end

    private

    def picture_params
        params.require(:picture).permit(:title, :url, :explanation, :date)
    end

end
