import kotlin.math.*

fun main() {
    val N = readLine()!!.toInt()
    var dp = MutableList(N+3) { MutableList(3) { 0 } }
    for (i in 1..N) {
        val inputs = readLine()!!.split(" ").map{ it.toInt() }
        // j: a=0, b=1, c=2
        for (j in 0..2) {
            for (k in 0..2) {
                if (j == k) continue
                dp[i+1][j] = max(dp[i+1][j], dp[i][k] + inputs[j])
            }
        }
    }
    var ans = -1
    for (i in 0..2) {
        ans = max(ans, dp[N+1][i])
    }
    println(ans)
}