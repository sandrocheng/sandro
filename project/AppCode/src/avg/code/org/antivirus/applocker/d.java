package org.antivirus.applocker;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import org.antivirus.core.Logger;

final class d extends AsyncTask
{
  public volatile boolean a = true;
  final String[] b = { "com.android.settings" };
  Map c;

  public d(AppLockerActivity paramAppLockerActivity, Context paramContext)
  {
    new a();
    this.c = a.a(paramContext);
  }

  private Boolean a()
  {
    while (true)
    {
      int i;
      try
      {
        Intent localIntent = new Intent("android.intent.action.MAIN", null);
        localIntent.addCategory("android.intent.category.LAUNCHER");
        PackageManager localPackageManager = this.d.getPackageManager();
        ListIterator localListIterator = localPackageManager.queryIntentActivities(localIntent, 0).listIterator();
        List localList = localPackageManager.queryIntentActivities(new Intent("android.settings.SETTINGS"), 0);
        if (localList.size() > 0)
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localList.get(0);
          e locale2 = new e(this.d);
          locale2.b = localResolveInfo;
          locale2.a = locale2.b.loadLabel(localPackageManager).toString();
          String str2 = locale2.b.activityInfo.packageName;
          if (this.c != null)
          {
            if ((this.c.keySet().contains(str2)) && (((Boolean)this.c.get(str2)).booleanValue()))
              locale2.d = true;
            locale2.c = locale2.b.loadIcon(localPackageManager);
          }
          publishProgress(new e[] { locale2 });
        }
        if ((this.a) && (localListIterator.hasNext()))
        {
          e locale1 = new e(this.d);
          locale1.b = ((ResolveInfo)localListIterator.next());
          locale1.a = locale1.b.loadLabel(localPackageManager).toString();
          String str1 = locale1.b.activityInfo.packageName;
          i = 0;
          if (i >= this.b.length)
            break label435;
          if (!str1.contains(this.b[i]))
            break label429;
          j = 1;
          if (j != 0)
            continue;
          if ((this.c != null) && (this.c.keySet().contains(str1)) && (((Boolean)this.c.get(str1)).booleanValue()))
            locale1.d = true;
          locale1.c = locale1.b.loadIcon(localPackageManager);
          publishProgress(new e[] { locale1 });
          continue;
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
      return Boolean.valueOf(true);
      label429: i++;
      continue;
      label435: int j = 0;
    }
  }

  protected final void onCancelled()
  {
    this.a = false;
    super.onCancelled();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.d
 * JD-Core Version:    0.6.2
 */