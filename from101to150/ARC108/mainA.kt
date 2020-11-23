fun main() {
    val (s: Long, p: Long) = readLine()!!.split(" ").map(String::toLong)
    var n: Long = 1L
    var ans: Boolean = false
    while (n*n <= p) {
        var m: Long = s-n
        if (m <= 0) continue
        if (n*m == p) {
            ans = true
            break
        }
        n++
    }
    println(if(ans) "Yes" else "No")
}