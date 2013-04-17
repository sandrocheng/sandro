import android.content.BroadcastReceiver;
import android.content.SharedPreferences;

public final class bsx
{
  private static volatile boolean a = false;
  private static volatile boolean b = false;
  private static BroadcastReceiver c = new bsy();

  public static void a()
  {
    if (a);
    while (true)
    {
      return;
      a = true;
      btl localbtl = new btl("tms");
      if (!localbtl.c.getBoolean(localbtl.a + "." + "reportlc", false))
        new bsz(localbtl).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsx
 * JD-Core Version:    0.6.2
 */