class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)


    if @answer.save
      redirect_to question_path(@question)
    else
      flash[:error] = "Form error"
      redirect_to @question
    end

  end

  private
    def answer_params
      params.require(:answer).permit(:answer_description)
    end
end
