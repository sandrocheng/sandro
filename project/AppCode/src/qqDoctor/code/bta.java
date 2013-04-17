import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.common.TMSBootReceiver.a;

public final class bta extends Thread
{
  public bta(Context paramContext)
  {
  }

  public final void run()
  {
    btb localbtb = new btb();
    localbtb.a(0, (int)(System.currentTimeMillis() / 1000L));
    boolean bool = new TMSBootReceiver.a((byte)0).a(this.a);
    int i = 0;
    if (bool);
    while (true)
    {
      localbtb.a(1, i);
      if (localbtb.b.length() > 0)
      {
        btl localbtl1 = localbtb.a;
        String str1 = localbtl1.c.getString(localbtl1.a + "." + "data", null);
        if (str1 == null)
          str1 = "";
        String str2 = str1 + localbtb.b.toString();
        btl localbtl2 = localbtb.a;
        localbtl2.b.putString(localbtl2.a + "." + "data", str2);
        localbtl2.b.commit();
        localbtb.b = new StringBuffer();
      }
      return;
      i = 1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bta
 * JD-Core Version:    0.6.2
 */