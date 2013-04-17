import java.text.SimpleDateFormat;
import java.util.Date;

public final class bzm
  implements bzg
{
  public final void a(String paramString1, String paramString2)
  {
    if (paramString2 != null)
      new StringBuilder(String.valueOf(new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss").format(new Date(System.currentTimeMillis())))).append(" ").append(paramString1).append(" ").append(paramString2).append("\r\n").toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzm
 * JD-Core Version:    0.6.2
 */