import android.app.PendingIntent;
import android.telephony.gsm.SmsManager;

public final class aq
  implements as
{
  private SmsManager a = SmsManager.getDefault();

  public final boolean a(int paramInt, String paramString1, String paramString2, String paramString3, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
  {
    this.a.sendTextMessage(paramString1, null, paramString3, paramPendingIntent1, null);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aq
 * JD-Core Version:    0.6.2
 */