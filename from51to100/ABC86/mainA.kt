fun main(args: Array<String>) {
    val (a: Int, b: Int) = readLine()!!.split(" ").map(String::toInt)
    println(if (a*b % 2 == 0) "Even" else "Odd" )
}