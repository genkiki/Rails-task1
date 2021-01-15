

class ScheduleController < ApplicationController
    def index
        @records = Record.all
    end

    def destroy
        Record.find_by(id: params[:id]).delete
        redirect_to("/schedule")
    end

    def show
        @record = Record.find_by(id:params[:id])
    end
end
