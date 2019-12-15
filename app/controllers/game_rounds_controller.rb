class GameRoundsController < ApplicationController

  def start_game
    letters = 'aaafrsaaeeeeaafirsadennnaeeeemaeegmuaegmnnafirsybjkqxzccenstceiiltceilptceipstddhnotdhhlordhlnordhlnoreiiittemotttensssufiprsygorrvwiprrrynootuwooottu'
    a = letters.split('').sample(16).join("")
    boggle = a.split( '' ).each_slice(4).to_a
    render json: { response: { boggle: boggle } , status: "success" }
  end

  def highscores
    scores = Score.order("score DESC")
    render json: { response: { scores: scores } , status: "success" }
  end

  def play_boggle
    player_name = params[:player_name]
    word = params[:word]
    boggle = JSON.parse(params[:boggle])
    boggle_obj = Boggle.new({ boggle: boggle })
    result = boggle_obj.check_word(word)
    Score.create!(player_name: player_name, score: word.length, word: word)
    if result.present?
      render json: { response: { result: result, score: word.length } , status: "success" }
    else
      render json: { response: { result: result, score: "" } , status: "success" }
    end
  end

  def checkword
    word = JSON.parse(params[:word])
    @response = DICTIONARY.include?(word)
    render json: { response: { word: @response } , status: "success" }
  end
end
