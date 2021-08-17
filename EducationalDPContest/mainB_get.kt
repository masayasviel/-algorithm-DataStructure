import kotlin.math.*

fun main(){
    val (N, K) = readLine()!!.split(" ").map{ it.toInt() }
    val H = readLine()!!.split(" ").map{ it.toInt() }
    var dp = MutableList(N+1){ Int.MAX_VALUE }
    dp[0] = 0
    for (i in 1..(N-1)) {
        val tmp = max(i-K, 0)
        for (j in tmp..(i-1)) {
            dp[i] = min(dp[i], dp[j] + abs(H[i]-H[j]))
        }
    }
    println(dp[N-1])
}