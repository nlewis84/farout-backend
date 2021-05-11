class Api::V1::PicturesController < ApplicationController

    def index
        @pictures = Picture.find(Picture.pluck(:id).sample(2))
        render json: @pictures
    end

    def top
        @pictures = Picture.top.limit(5)
        render json: @pictures
    end

    def newest
        @pictures = Picture.newest.limit(3)
        render json: @pictures
    end

    def filter
        @pictures = Picture.all
        render json: @pictures
    end

    private

    def picture_params
        params.require(:picture).permit(:title, :url, :explanation, :date)
    end

end
