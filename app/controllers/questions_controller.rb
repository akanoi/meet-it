class QuestionsController < ApplicationController
  def new
  end

  def edit
  end

  def show
    @page_title = "Questions"
    @questions_to_me = Question.select { |t| t[:user_id] == current_user.id }
    @questions_for_me = Question.select {|t| t[:user_to_id] == current_user.id}
  end
end
