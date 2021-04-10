class InfosController < ApplicationController
    def index
        @infos = Info.all
        render json: @infos

    end

    # private
    # def info_params
    #     params.permit(:name, :salary, :salary, :level)
    # end
end
