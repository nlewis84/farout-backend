class Api::V1::PicturesController < ApplicationController

    def index
        @pictures = Picture.all
        render json: @pictures, include: [:title, :url, :description, :date]
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

    def destroy
        Picture.find(params[:id]).destroy
    end

    private

    def picture_params
        params.require(:picture).permit(:title, :url, :description, :date)
    end

end
