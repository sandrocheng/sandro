package org.antivirus.ui.versionUpdate;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import org.antivirus.a.i;
import org.antivirus.core.Logger;

final class f
  implements i
{
  f(VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
  }

  public final void a()
  {
    if (VersionUpdateProgressDialog.e(this.a) == null);
    while (true)
    {
      return;
      VersionUpdateProgressDialog.e(this.a).cancel();
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    if (VersionUpdateProgressDialog.e(this.a) == null);
    while (true)
    {
      return;
      this.a.runOnUiThread(new g(this, paramInt2, paramInt1));
    }
  }

  public final void a(File paramFile)
  {
    if (paramFile != null);
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addCategory("android.intent.category.DEFAULT");
      localIntent.setDataAndType(Uri.fromFile(paramFile), "application/vnd.android.package-archive");
      Iterator localIterator = this.a.getPackageManager().queryIntentActivities(localIntent, 65536).iterator();
      ResolveInfo localResolveInfo;
      do
      {
        if (!localIterator.hasNext())
          break;
        localResolveInfo = (ResolveInfo)localIterator.next();
      }
      while (!localResolveInfo.activityInfo.packageName.contains("packageinstaller"));
      localIntent.setClassName(localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.name);
      i = 1;
      localIntent.setFlags(268435456);
      if (i != 0)
        this.a.startActivity(localIntent);
      a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        continue;
        int i = 0;
      }
    }
  }

  public final boolean b()
  {
    return VersionUpdateProgressDialog.h(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.f
 * JD-Core Version:    0.6.2
 */