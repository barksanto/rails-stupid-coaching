class QuestionsController < ApplicationController
  def ask; end

  def answer
    @message = params[:question]
    @answer = ''
    @answer = if @message == 'I am going to work'
                'Good!'
              elsif @message.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
