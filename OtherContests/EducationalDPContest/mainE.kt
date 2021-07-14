import kotlin.math.*

fun main() {
    val (N, W) = readLine()!!.split(" ").map{ it.toInt() }
    val V_MAX = 1000 * N + 10
    var dp = MutableList(N+1) { MutableList(V_MAX+1) { Int.MAX_VALUE.toLong() } }
    dp[0][0] = 0
    for (i in 1..N) {
        val (w, v) = readLine()!!.split(" ").map{ it.toInt() }
        for (j in 0..V_MAX) {
            if (j-v >= 0) {
                dp[i][j] = min(dp[i-1][j], dp[i-1][j-v] + w)
            } else {
                dp[i][j] = dp[i-1][j]
            }
        }
    }
    var ans = 0
    for (i in 0..V_MAX) {
        if (dp[N][i] <= W) {
            ans = i
        }
    }
    println(ans)
}