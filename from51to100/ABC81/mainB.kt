fun main() {
    val n: Int = readLine()!!.toInt()
    val a: MutableList<Int> = readLine()!!.split(" ").map(String::toInt).toMutableList()
    var ans: Int = 0
    while(a.all{it % 2 == 0}) {
        ans++;
        for(i in 0 until n) {
            a[i] /= 2
        }
    }
    println(ans)
}