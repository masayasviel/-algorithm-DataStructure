fun main() {
    val (n: Int, a: Int, b: Int) = readLine()!!.split(" ").map(String::toInt)
    var ans: Int = 0
    for (i in 1..n) {
        val ranksSum = i.toString().split("").filter{it != ""}.map(String::toInt).reduce{tmp, value->tmp+value}
        if(a <= ranksSum && ranksSum <= b) ans += i
    }
    println(ans)
}