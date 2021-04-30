class ExamController < ApplicationController
  def index
    @exam = Exam.all
    render json: @exam
  end
end
