import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class fj
{
  private static ex a = new ex("networkload");

  public static long a()
  {
    try
    {
      ex localex = a;
      long l = localex.c.getLong(localex.a + "." + "mobile_download_bytes", 0L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(long paramLong)
  {
    try
    {
      ex localex = a;
      localex.b.putLong(localex.a + "." + "mobile_download_bytes", paramLong);
      localex.b.commit();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fj
 * JD-Core Version:    0.6.2
 */