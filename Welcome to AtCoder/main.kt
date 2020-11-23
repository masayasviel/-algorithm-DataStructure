fun main(args: Array<String>) {
    val a: Int = readLine()!!.toInt()
    val (b: Int, c: Int) = readLine()!!.split(" ").map(String::toInt)
    val s: String = readLine()!!
    print("${a+b+c} ${s}")
}