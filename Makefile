# kotlinのコンパイル
# jarファイルの実行：kotlin main.jar
kotlin-run:
	kotlinc $(TARGET).kt -include-runtime -d main.jar
