import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity.a;

public final class afo
  implements DownloadListener
{
  public afo(WebUIActivity.a parama)
  {
  }

  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
      this.a.a.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afo
 * JD-Core Version:    0.6.2
 */