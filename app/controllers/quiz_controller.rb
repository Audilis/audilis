class QuizController < ApplicationController
  DEFAULT = 'config/locales/quizes/liag.en.yml'
  CHARACTERS = %w(alister jin faust dimitri enzo milo)

  def show
    @winner = params[:id].downcase

    if valid_character?(@winner)
      render
    else
      render :new
    end
  end

  def new
    referrer = params[:referrer].try(:downcase)

    if valid_character?(referrer)
      @referrer = referrer
    end

    @quiz = YAML::load_file(DEFAULT).with_indifferent_access
  end

  def create ; end

  private

  def quiz_params
    params.require(:quiz).permit(:result)
  end

  def valid_character?(character)
    CHARACTERS.include?(character)
  end
end
