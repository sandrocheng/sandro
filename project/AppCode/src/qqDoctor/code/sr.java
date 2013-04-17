import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Message;

final class sr extends Handler
{
  sr(sq paramsq)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 11:
    }
    while (true)
    {
      return;
      if ((paramMessage.arg1 == 2) || (paramMessage.arg1 == 3))
      {
        km localkm = f.d();
        long l = System.currentTimeMillis();
        localkm.a.putLong("last_time_of_update", l).commit();
        localkm.a.putBoolean("ever_update", true).commit();
      }
      if (sq.a(this.a) != null)
        sq.a(this.a).a(paramMessage.arg1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sr
 * JD-Core Version:    0.6.2
 */