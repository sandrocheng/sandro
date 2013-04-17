import android.content.Context;
import java.util.TimerTask;

final class brs extends TimerTask
{
  brs(brp parambrp)
  {
  }

  public final void run()
  {
    long l;
    Context localContext;
    String str2;
    if (brp.R(this.a).e())
    {
      String str1 = brp.ai(this.a).getString(2131428034);
      Object[] arrayOfObject = new Object[1];
      l = System.currentTimeMillis() - brp.aj(this.a);
      localContext = brp.ak(this.a);
      if (l < 60000L)
      {
        str2 = l / 1000L + localContext.getString(2131428403);
        arrayOfObject[0] = str2;
        String str3 = String.format(str1, arrayOfObject);
        brp.a(this.a, brp.al(this.a), str3, 0);
      }
    }
    while (true)
    {
      return;
      boolean bool = l < 3600000L;
      str2 = null;
      if (!bool)
        break;
      str2 = l / 60000L + localContext.getString(2131428404);
      if (l % 60000L == 0L)
        break;
      str2 = str2 + l % 60000L / 1000L + localContext.getString(2131428403);
      break;
      cancel();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brs
 * JD-Core Version:    0.6.2
 */