# 白黒白黒白白黒白黒白黒白 : WBWBWWBWBWBW
keyboard = gets.chomp.split("WWBWBWBWW")
# ド, ド#, レ, レ#, ミ, ファ, ファ#, ソ, ソ#, ラ, ラ#, シ
scale = ["Mi", "Fa", "So", "La", "Si", "Do", "Re"]
puts scale[-keyboard[0].count("W")]