

class ScheduleController < ApplicationController
    def index
        @records = Record.all
    end

    def delete
        Record.find_by(id: params[:id]).delete
        redirect_to("/")
    end

    def show
        @record = Record.find_by(id:params[:id])
    end
end
