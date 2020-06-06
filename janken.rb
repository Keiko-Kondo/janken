# プレイヤー(自分)に「0 ~ 2」を入力させるロジックを書きます。
class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    input_hand = gets.to_i
      while true
        if input_hand==0 || input_hand==1 || input_hand==2
          return input_hand
        else
          puts "もう一度数字を入力してください。"
          puts "0:グー, 1:チョキ, 2:パー"
          input_hand = gets.to_i
        end
      end
  end
end
# 敵が「0 ~ 2」の値をランダムで生成するロジックを書きます。
class Enemy
  def hand
    janken_index = [0,1,2]
    janken_index.sample
  end
end
# プレイヤー(自分)が入力した「0 ~ 2」と、敵がランダムで生成した「0 ~ 2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken
  def pon(player_hand, enemy_hand)

    while true

    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"

      if player_hand == enemy_hand
        puts "あいこ"
        return true
      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
        puts "あなたの勝ちです"
        return false
      else
        puts "あなたの負けです"
        return false
      end

    end
  end
end
# 変数「player」にPlayerをインスタンス化したものを代入します。
player = Player.new
# 変数「enemy」にEnemyをインスタンス化したものを代入します。
enemy = Enemy.new
# 変数「janken」にJankenをインスタンス化したものを代入します。
janken = Janken.new
# 変数「next_game」に「true」を代入します。※「next_game」が「false」にならない限り、永久にwhileで繰り返し処理を実行するためです。
# 以降の型の例に沿って実装しましょう ※実装する時場合はコメントアウトに注意しましょう。
#
next_game = true
while next_game
# 変数「next_game」にじゃんけんを実行して返ってきた値(戻り値)を代入します。
  # 「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
  next_game = janken.pon(player.hand, enemy.hand)
  # じゃんけんの実行結果に「false」が返ってくると、このwhileを終了します。「true」が返ってくると、その回数だけ繰り返し続けます。
end
