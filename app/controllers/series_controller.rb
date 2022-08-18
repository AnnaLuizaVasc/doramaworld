class SeriesController < ApplicationController
    before_action :set_serie, only: [:show, :edit, :update, :destroy]

    def index
        @series = Serie.created_at
    end

    def new
        @serie = Serie.new
    end

    def show
    end

    def new
        @serie = Serie.new
    end

    def create
        @serie = Serie.new(serie_params)
        if @serie.save
            redirect_to series_index_path
        else
            render :new, status: :unprocessable_entity
        end

    end

    def edit  
    end

    def update
        if @serie.update(serie_params)
            redirect_to series_index_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        if @serie.destroy
            redirect_to series_index_path
        else
            redirect_to @serie
        end
    end

    private

    def set_serie
        @serie = Serie.find(params[:id])
    end

    def serie_params
        params.require(:serie).permit(:name, :classification, :synopsis, :cast, :soundtrak, :poster)
    end
end
