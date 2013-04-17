import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;

public final class fq
{
  public String a;
  public String b;
  public String c;
  public PendingIntent d;
  public int e;
  public Uri f;
  public Bundle g;

  public fq()
  {
  }

  public fq(String paramString1, String paramString2, String paramString3, PendingIntent paramPendingIntent, Uri paramUri, Bundle paramBundle, int paramInt)
  {
    this.b = paramString1;
    this.a = paramString2;
    this.c = null;
    this.d = null;
    this.f = paramUri;
    this.g = paramBundle;
    this.e = paramInt;
    if (paramBundle != null)
    {
      paramBundle.getString("ACTION");
      paramBundle.getInt("FLAGS", -1);
      paramBundle.getStringArray("CATEGORYS");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fq
 * JD-Core Version:    0.6.2
 */