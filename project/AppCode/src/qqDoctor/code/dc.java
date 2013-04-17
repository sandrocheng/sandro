import android.content.Context;
import android.content.res.Resources;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;

public final class dc
{
  private static String a = "tms_";
  private static String b = "[com.android.internal.telephony.ITelephony]";
  private static String c = "[com.android.internal.telephony.ITelephonyRegistry]";
  private static Boolean d = null;

  public static int a(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().density);
  }

  public static String a(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }

  public static boolean a()
  {
    if (d == null);
    label156: label176: label180: 
    while (true)
    {
      int i;
      int j;
      int k;
      int m;
      try
      {
        String[] arrayOfString = a.a(new String[] { "service", "list" });
        if ((arrayOfString != null) && (arrayOfString.length > 0))
        {
          i = arrayOfString.length;
          j = 0;
          k = 0;
          m = 0;
          break label156;
          d = Boolean.valueOf(true);
          if (d == null)
            d = Boolean.valueOf(false);
          return d.booleanValue();
          String str = arrayOfString[m];
          if (str.contains(a))
            break label176;
          if (str.contains(b))
          {
            k++;
            break label176;
          }
          if (!str.contains(c))
            break label176;
          j++;
          break label176;
          label125: d = Boolean.valueOf(false);
          continue;
        }
      }
      catch (Exception localException)
      {
        d = Boolean.valueOf(false);
        continue;
        d = Boolean.valueOf(false);
        continue;
      }
      while (true)
      {
        if (m < i)
          break label180;
        if (k > 1)
          break;
        if (j <= 1)
          break label125;
        break;
        m++;
      }
    }
  }

  public static String b(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dc
 * JD-Core Version:    0.6.2
 */