class Api::V1::PicturesController < ApplicationController

    def index
        @pictures = Picture.find(Picture.pluck(:id).sample(2))
        render json: @pictures
    end

    def top
        @pictures = Picture.top
        render json: @pictures
    end

    def newest
        @picture = Picture.newest.limit(1)
        render json: @picture
    end

    private

    def picture_params
        params.require(:picture).permit(:title, :url, :explanation, :date)
    end

end
