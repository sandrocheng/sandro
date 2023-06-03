import java.text.SimpleDateFormat
import java.util.*

fun log(msg:String) = println("${SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(Date())} [${Thread.currentThread().name}] $msg")
