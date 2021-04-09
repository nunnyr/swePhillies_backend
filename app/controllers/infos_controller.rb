class InfosController < ApplicationController
    def index
        @info = Info.all
        render json: @info

    end

    private
    def info_params
        params.permit(:name, :salary, :salary, :level)
    end
end
