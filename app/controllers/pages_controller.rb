class PagesController < ApplicationController
    def ask
      
    end

    def answer
        if params[:question]
            @question = params[:question]
            if @question.downcase == "i am going to work right now!"
                @answer = ""
                raise
            elsif @question.end_with?("?")
                @answer = "Silly question, get dressed and go to work!"
            else
                @answer = "I don't care, get dressed and go to work!"
            end
        end
    end
end

