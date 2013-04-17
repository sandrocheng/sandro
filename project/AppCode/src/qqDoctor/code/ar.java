import android.app.PendingIntent;
import android.os.RemoteException;
import android.telephony.SmsManager;
import com.android.internal.telephony.ISms;

public final class ar
  implements as
{
  private SmsManager a = SmsManager.getDefault();

  public final boolean a(int paramInt, String paramString1, String paramString2, String paramString3, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
  {
    ISms localISms = ao.a().a(-1);
    boolean bool;
    if (localISms == null)
    {
      this.a.sendTextMessage(paramString1, null, paramString3, paramPendingIntent1, null);
      bool = true;
    }
    while (true)
    {
      return bool;
      try
      {
        localISms.sendText(paramString1, null, paramString3, paramPendingIntent1, null);
        bool = true;
      }
      catch (RemoteException localRemoteException)
      {
        bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ar
 * JD-Core Version:    0.6.2
 */