class TimeLogController < ApplicationController
    def show
        @timelog = TimeLog.find(params[:id])
      end
end
