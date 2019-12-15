# boggle_play
Boggle play to match string is present in string boxes
API

1. start_play
GET  http://{host}/game_rounds/start_game

# check word is correct or not
2. checkword 
GET http://{host}/game_rounds/checkword?word='YOUR_WORD'

# check word is present in boggle board or not
3. play_boggle
POST http://{host}/game_rounds/play_boggle'
form-data: 
  {
    word:YOUR_WORD
    boggle:[["t","o","r","o"],["d","o","i","t"],["i","b","t","o"],["i","o","r","o"]]
    player_name:PLAYER_NAME
  }

4. highscores
GET http://{host}/game_rounds/highscores