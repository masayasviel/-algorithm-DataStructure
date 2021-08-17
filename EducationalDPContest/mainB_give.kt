import kotlin.math.*

fun main(){
    val (N, K) = readLine()!!.split(" ").map{ it.toInt() }
    val H = readLine()!!.split(" ").map{ it.toInt() }
    var dp = MutableList(N+1){ Int.MAX_VALUE }
    dp[0] = 0
    for (i in 0..N) {
        for (j in 1..K) {
            if (i+j < N) {
                dp[i+j] = min(dp[i+j], dp[i] + abs(H[i+j]-H[i]))
            }
        }
    }
    println(dp[N-1])
}