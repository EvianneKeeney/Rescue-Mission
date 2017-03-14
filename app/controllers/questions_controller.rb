
class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      flash[:error] = "Form error"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])

  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(question_params)
    if @question.save
      redirect_to @question
    else
      flash[:error] = "Form error"
      render :edit
    end

  end

  def destroy
    @question.destroy
    redirect_to @question, notice: 'Question was successfully destroyed.'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])

  end

  # Only allow a trusted parameter "white list" through.
  def question_params
    params.require(:question).permit(:title, :description)
  end

end
