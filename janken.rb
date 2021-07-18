 #あっち向いてホイ
 #ジャンケンで勝ったとき
def result_win
  puts "あっち向いて..."
  puts "[0]上,[1]右,[2]下,[3]左"
  player_finger = gets.to_i
  computer_face = rand(4)
        
  if player_finger >= 4
    puts "入力された値が無効です"
    janken
  end
      
  directions = ["上","右","下","左"]
    puts "ホイ"
    puts "---------------"
    puts "あなた：#{directions[player_finger]}を指しました"
    puts "相手：#{directions[computer_face]}を向きました"
      
          
  if player_finger == computer_face
    puts "==============="
    puts "あなたの勝ちです"
    puts "==============="
  else
    puts "---------------"
    puts "もう一度じゃんけんをします"
    puts "---------------"
    janken
  end
end
  
      #ジャンケンで負けたとき
def result_lose
  puts "あっち向いて..."
  puts "[0]上,[1]右,[2]下,[3]左"
  player_face = gets.to_i
  computer_finger = rand(4)
            
  if player_face >= 4
    puts "入力された値が無効です"
    janken
  end
          
  directions = ["上","右","下","左"]
    puts "ホイ"
    puts "あなた：#{directions[player_face]}を向きました"
    puts "相手：#{directions[computer_finger]}を指しました"
            
  if player_face == computer_finger
    puts "==============="
    puts "あなたの負けです"
    puts "==============="
  else
    puts "---------------"
    puts "もう一度じゃんけんをします"
    puts "---------------"
    janken
  end
end

 #じゃんけん
puts "最初はグー　じゃんけん..."
def janken
  puts "[0]グー,[1]チョキ,[2]パー"
    
  player_hand = gets.to_i
  computer_hand = rand(3)
    
  if player_hand >= 3
    puts "入力された値が無効です"
    return true
  end
    
  jankens = ["グー","チョキ","パー"]
  puts "ホイ"
  puts "---------------"
  puts "あなた:#{jankens[player_hand]}　を出しました"
  puts "相手　:#{jankens[computer_hand]}　を出しました"
      
  win = player_hand == 0 && computer_hand == 1 || player_hand == 1 && computer_hand == 2 || player_hand == 2 && computer_hand== 0
  draw = player_hand == computer_hand
  lose = !(win && draw)
    
  if draw
    puts "---------------"
    puts "あいこで..."
    return true
  elsif win 
    puts "==============="
    puts "あなたの勝ち"
    puts "==============="
    result_win
    return false
  else
    puts "==============="
    puts "あなたの負け"
    puts "==============="
    result_lose
    return false
  end
end
  
next_game = true
  while next_game
    next_game = janken
  end