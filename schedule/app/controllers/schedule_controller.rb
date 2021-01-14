require 'date'

class ScheduleController < ApplicationController
    def index
        @records = Record.all
        @date = Date.today
    end

    def delete
        Record.find_by(id: params[:id]).delete
        redirect_to("/")
    end
end
