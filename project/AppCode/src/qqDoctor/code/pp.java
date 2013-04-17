import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.WebsiteTipsDialogView.onAddDontRemindWebSiteListener;
import java.util.Map;

final class pp
  implements WebsiteTipsDialogView.onAddDontRemindWebSiteListener
{
  pp(po.c paramc)
  {
  }

  public final void blockUrl()
  {
    this.a.e = true;
    Message localMessage = this.a.l.obtainMessage(2);
    this.a.l.sendMessageDelayed(localMessage, 500L);
  }

  public final void onAdd3MinDontRemindWebSite()
  {
    long l = System.currentTimeMillis();
    if (this.a.h != null)
      this.a.m.b.put(this.a.h, Long.valueOf(l));
  }

  public final void reVisitUrl()
  {
    Message localMessage = this.a.l.obtainMessage(2);
    this.a.l.sendMessageDelayed(localMessage, 500L);
    String str = "com.android.browser.BrowserActivity";
    PackageManager localPackageManager = this.a.m.e.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo("com.google.android.browser", 1);
      localObject1 = localPackageInfo;
      if (localObject1 != null);
    }
    catch (Exception localException3)
    {
      try
      {
        localObject1 = localPackageManager.getPackageInfo("com.android.browser", 1);
        str = "com.android.browser.BrowserActivity";
        if (localObject1 != null);
      }
      catch (Exception localException3)
      {
        try
        {
          while (true)
          {
            localObject1 = localPackageManager.getPackageInfo("com.amazon.cloud9", 1);
            str = "com.amazon.cloud9.BrowserActivity";
            localObject2 = localObject1;
            if (localObject2 != null)
              break;
            return;
            localException1 = localException1;
            localException1.printStackTrace();
            localObject1 = null;
          }
          localException3 = localException3;
          Object localObject3 = localObject1;
          localException3.printStackTrace();
          localObject1 = localObject3;
        }
        catch (Exception localException2)
        {
          while (true)
          {
            Object localObject1;
            Object localObject2 = localObject1;
            localException2.printStackTrace();
            continue;
            ComponentName localComponentName = new ComponentName(localObject2.packageName, str);
            Intent localIntent = new Intent();
            localIntent.setAction("android.intent.action.SEARCH");
            localIntent.putExtra("query", this.a.i);
            localIntent.setComponent(localComponentName);
            localIntent.setFlags(343932928);
            localIntent.putExtra("create_new_tab", false);
            this.a.m.e.startActivity(localIntent);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pp
 * JD-Core Version:    0.6.2
 */