import android.content.BroadcastReceiver;
import android.content.SharedPreferences;

public final class em
{
  private static volatile boolean a = false;
  private static volatile boolean b = false;
  private static BroadcastReceiver c = new en();

  public static void a()
  {
    if (a);
    while (true)
    {
      return;
      a = true;
      ex localex = new ex("tms");
      if (!localex.c.getBoolean(localex.a + "." + "reportlc", false))
        new eo(localex).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     em
 * JD-Core Version:    0.6.2
 */