fun main(args: Array<String>) {
    var s: String = readLine()!!
    var ans: Boolean = true

    while(s.length > 0 && ans){
        when{
            s.endsWith("dreamer") -> s = s.substring(0, s.lastIndexOf("dreamer"))
            s.endsWith("eraser") -> s = s.substring(0, s.lastIndexOf("eraser"))
            s.endsWith("dream") -> s = s.substring(0, s.lastIndexOf("dream"))
            s.endsWith("erase") -> s = s.substring(0, s.lastIndexOf("erase"))
            else -> ans = false
        }
    }

    println(if(ans) "YES" else "NO")
}