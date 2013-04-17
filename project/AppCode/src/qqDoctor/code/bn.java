import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.util.ArrayList;

public abstract class bn
  implements cb, ce
{
  protected static ContentResolver a;

  static
  {
    Uri.parse("content://contacts/phones");
  }

  protected bn(Context paramContext)
  {
    a = paramContext.getContentResolver();
  }

  public static cb a(Context paramContext)
  {
    if (de.g());
    for (Object localObject = bo.b(paramContext); ; localObject = new bp(paramContext))
      return localObject;
  }

  protected static void a(String paramString, ArrayList<String> paramArrayList)
  {
    if ((paramString == null) || (paramArrayList == null));
    String str1;
    do
    {
      return;
      str1 = new String(paramString);
    }
    while (str1.length() <= 0);
    int i = str1.indexOf(",");
    int j = str1.length();
    String str2 = str1;
    for (int k = i; ; k = str2.indexOf(","))
    {
      if (-1 == k)
      {
        paramArrayList.add(str2);
        break;
      }
      String str3 = str2.substring(0, k);
      if (k + 1 <= j - 1)
        str2 = str2.substring(k + 1);
      paramArrayList.add(str3);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bn
 * JD-Core Version:    0.6.2
 */