import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings.Secure;
import com.tencent.lbsapi.QLBSService;

final class iw extends Handler
{
  iw(iv paramiv, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if (!this.a.b())
      {
        String str = Settings.Secure.getString(iv.a(this.a).getContentResolver(), "location_providers_allowed");
        if (str != null)
        {
          boolean bool1 = str.contains("gps");
          boolean bool2 = str.contains("network");
          iv.b(this.a);
          if (((bool2) || (bool1)) && (iv.c(this.a) != null))
          {
            iv.c(this.a).setGpsEnabled(bool1);
            iv.a(this.a, Boolean.valueOf(true));
            iv.c(this.a).startLocation();
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     iw
 * JD-Core Version:    0.6.2
 */