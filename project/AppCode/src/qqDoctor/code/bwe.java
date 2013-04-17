import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

public final class bwe
{
  private static final String[] a = { "cmwap", "cmnet", "3gwap", "3gnet", "uniwap", "uninet", "ctwap", "ctnet", "default" };
  private static final String[] b = { "cmnet", "3gnet", "uninet", "ctnet" };
  private static final String[] c = { "cmwap", "3gwap", "uniwap", "ctwap" };

  public static String a(String paramString)
  {
    String str2;
    if (!TextUtils.isEmpty(paramString))
      str2 = paramString.toLowerCase();
    for (int i = 0; ; i++)
    {
      if (i >= a.length);
      for (String str1 = null; ; str1 = a[i])
      {
        return str1;
        if (!str2.startsWith(a[i]))
          break;
      }
    }
  }

  public static boolean b(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (!bool1)
      bool2 = Arrays.asList(b).contains(paramString);
    return bool2;
  }

  public static boolean c(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (!bool1)
      bool2 = Arrays.asList(c).contains(paramString);
    return bool2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwe
 * JD-Core Version:    0.6.2
 */