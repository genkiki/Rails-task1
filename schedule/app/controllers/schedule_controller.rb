

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

    def new
        @record = Record.new
    end

    def create
        @record = Record.new(params.require(:record).permit(:title, :start, :end, :allday, :memo))
        if @record.save
            flash[:notice] = "スケジュールを新規登録しました"
            redirect_to "/schedule"
        else
            render "new"
        end
    end

    def edit
        @record = Record.find_by(id: params[:id])
    end

    def update
        @record = Record.find(params[:id])
        result_update = @record.update(params.require(:record).permit(:title, :start, :end, :allday, :memo))
        if result_update
            flash[:notice] = "ID「#{@record.id}」のスケジュールを更新しました"
            redirect_to "/schedule"
        else
            render "edit"
        end
    end
end
