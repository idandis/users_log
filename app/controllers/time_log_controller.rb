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
  
    private
      def timelog_params
        params.permit(:summary, :time_spent, :log_date, :note, :user_id)
      end
  end


