fun main() {
    val (n: Int, y: Int) = readLine()!!.split(" ").map(String::toInt)

    for (yukichi in 0..n) {
        for (ichiyo in 0..n) {
            var hideyo: Int = n - yukichi - ichiyo
            if (yukichi * 10000 + ichiyo * 5000 + hideyo * 1000 == y && hideyo >= 0) {
                println("$yukichi $ichiyo $hideyo")
                return
            }
        }
    }

    println("-1 -1 -1")
}