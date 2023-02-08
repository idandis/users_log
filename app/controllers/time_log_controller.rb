class TimeLogController < ApplicationController
    def show
        @timelog = TimeLog.find(params[:id])
    end

    def create
      @timelog = TimeLog.new(timelog_params)
  
      if @timelog.save
        redirect_to @timelog, notice: 'Time log was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @timelog = TimeLog.find(params[:id])
    end
  
    def update
      @timelog = TimeLog.find(params[:id])
  
      if @timelog.update(timelog_params)
        redirect_to @timelog
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @timelog = TimeLog.find(params[:id])
      @timelog.destroy

      redirect_to "/home/dashboard", status: :see_other
    end
  
  
    private
      def timelog_params
        params.require(:time_log).permit(:summary, :time_spent, :log_date, :note, :user_id)
      end
  end


