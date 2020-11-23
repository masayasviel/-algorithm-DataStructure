fun main() {
    val n: Int = readLine()!!.toInt()
    val a: List<Int> = readLine()!!.split(" ").map(String::toInt).sortedDescending()
    var alice: Int = 0
    var bob: Int = 0
    for(i in 0 until n) {
        if(i % 2 == 0) alice += a[i] else bob += a[i]
    }
    println(alice - bob)
}