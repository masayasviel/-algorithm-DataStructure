const val MOD = 1000000007

fun main(){
    val (H, W) = readLine()!!.split(" ").map { it.toInt() }
    val Grid = List(H) { readLine()!!.split("").filter { it != "" } }
    var dp = MutableList(H+1) { MutableList(W+1) { 0 } }
    dp[0][0] = 1
    for (h in 0 until H) {
        for (w in 0 until W) {
            if (w+1 < W && Grid[h][w+1] != "#") {
                dp[h][w+1] += dp[h][w]
                dp[h][w+1] %= MOD
            }
            if (h+1 < H && Grid[h+1][w] != "#") {
                dp[h+1][w] += dp[h][w]
                dp[h+1][w] %= MOD
            }
        }
    }
    println(dp[H-1][W-1])
}