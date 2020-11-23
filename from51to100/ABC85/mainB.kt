fun main() {
    val n: Int = readLine()!!.toInt()
    val d: List<Int> = List(n) {
        readLine()!!.toInt()
    }
    println(d.distinct().size)
}