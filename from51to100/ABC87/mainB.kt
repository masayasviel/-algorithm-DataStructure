fun main() {
    val a: Int = readLine()!!.toInt()
    val b: Int = readLine()!!.toInt()
    val c: Int = readLine()!!.toInt()
    val x: Int = readLine()!!.toInt()
    var ans: Int = 0
    for (i in 0..a) {
        for (j in 0..b) {
            for (k in 0..c) {
                if(i * 500 + j * 100 + k * 50 == x) ans++
            }
        }
    }
    println(ans)
}