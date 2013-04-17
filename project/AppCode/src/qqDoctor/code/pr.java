import QQPIM.UrlCheckResponse;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Message;
import android.provider.Browser;
import com.tencent.qqpimsecure.uilib.view.WebsiteTipsDialogView;

final class pr extends Handler
{
  pr(po.c paramc)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      po.c localc = this.a;
      localc.j = null;
      localc.k = null;
      if ((localc.d.a.getMainHarmId() != 0) && (localc.d.a.getMainHarmId() != -1))
      {
        label148: String str;
        PackageManager localPackageManager;
        switch (localc.d.a.getMainHarmId())
        {
        default:
          str = "com.android.browser.BrowserActivity";
          localPackageManager = localc.m.e.getPackageManager();
        case 1:
        case 2:
        case 8:
        case 9:
        case 3:
        case 12:
        case 11:
        case 10:
        case 4:
        case 5:
        case 7:
        case 6:
        }
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
                {
                  ComponentName localComponentName = new ComponentName(localObject2.packageName, str);
                  Intent localIntent = new Intent();
                  localIntent.setAction("android.intent.action.SEARCH");
                  localIntent.putExtra("query", "file:///data/data/" + localc.m.e.getPackageName() + "/files/redirect.html");
                  localIntent.setComponent(localComponentName);
                  localIntent.setFlags(343932928);
                  localIntent.putExtra("create_new_tab", false);
                  localc.m.e.startActivity(localIntent);
                  localc.m.e.getContentResolver().delete(Browser.BOOKMARKS_URI, "_id=" + localc.a, null);
                }
                if ((localc.j == null) || (localc.k == null))
                  break label907;
                localc.f = new WebsiteTipsDialogView(localc.m.e, localc.j, localc.k, localc.i, localc.g);
                localc.f.showDialog();
                new Thread(new ps(localc)).start();
                break;
                localc.j = localc.m.e.getString(2131430213);
                localc.k = localc.m.e.getString(2131430216);
                break label148;
                localc.j = localc.m.e.getString(2131430214);
                localc.k = localc.m.e.getString(2131430217);
                break label148;
                localc.j = localc.m.e.getString(2131430215);
                localc.k = localc.m.e.getString(2131430218);
                break label148;
                localc.j = localc.m.e.getString(2131430215);
                localc.k = localc.m.e.getString(2131430219);
                break label148;
                localc.j = localc.m.e.getString(2131430213);
                localc.k = localc.m.e.getString(2131430220);
                break label148;
                localc.j = localc.m.e.getString(2131430215);
                localc.k = localc.m.e.getString(2131430221);
                break label148;
                localc.j = localc.m.e.getString(2131430215);
                localc.k = localc.m.e.getString(2131430222);
                break label148;
                localc.j = localc.m.e.getString(2131430215);
                localc.k = localc.m.e.getString(2131430223);
                break label148;
                localc.j = localc.m.e.getString(2131430215);
                localc.k = localc.m.e.getString(2131430224);
                break label148;
                localc.j = localc.m.e.getString(2131430214);
                localc.k = localc.m.e.getString(2131430225);
                break label148;
                localc.j = localc.m.e.getString(2131430213);
                localc.k = localc.m.e.getString(2131430226);
                break label148;
                localc.j = localc.m.e.getString(2131430215);
                localc.k = localc.m.e.getString(2131430227);
                break label148;
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
                label907: localc.a();
              }
            }
          }
        }
      }
      else
      {
        localc.a();
        continue;
        po.c.a(this.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pr
 * JD-Core Version:    0.6.2
 */