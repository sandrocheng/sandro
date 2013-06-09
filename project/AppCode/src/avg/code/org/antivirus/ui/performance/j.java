package org.antivirus.ui.performance;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import org.antivirus.core.Logger;

final class j
  implements Runnable
{
  j(TaskKiller paramTaskKiller, LayoutInflater paramLayoutInflater, LinearLayout paramLinearLayout)
  {
  }

  public final void run()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    List localList = ((ActivityManager)this.c.getSystemService("activity")).getRunningAppProcesses();
    ListIterator localListIterator;
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    label61: int i;
    if (localList != null)
    {
      localListIterator = localList.listIterator();
      if (localListIterator != null)
      {
        localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localListIterator.next();
        i = 0;
        if (localRunningAppProcessInfo == null);
      }
    }
    while (true)
    {
      int k;
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        String[] arrayOfString = localRunningAppProcessInfo.pkgList;
        int j = arrayOfString.length;
        k = 0;
        if (k < j)
        {
          String str = arrayOfString[k];
          if (str == null)
            break label488;
          localStringBuilder.append(str).append(" ");
          break label488;
        }
        PackageManager localPackageManager = this.c.getPackageManager();
        if ((localRunningAppProcessInfo != null) && (localRunningAppProcessInfo.processName != null) && (TaskKiller.a(this.c).get(localRunningAppProcessInfo.processName) == null))
        {
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(localRunningAppProcessInfo.processName, 0);
          if (localApplicationInfo != null)
          {
            o localo2 = new o(this.c, (byte)0);
            localo2.a = ((String)localPackageManager.getApplicationLabel(localApplicationInfo));
            localo2.b = localApplicationInfo.packageName;
            localArrayList2.add(localo2);
            View localView = this.a.inflate(2130903094, null);
            localo2.d = localView;
            localo2.e = this.b;
            localView.setTag(localo2);
            ((TextView)localView.findViewById(2131230803)).setText(localo2.a);
            ((TextView)localView.findViewById(2131230969)).setVisibility(8);
            localArrayList1.add((ImageView)localView.findViewById(2131230802));
            localView.setOnClickListener(new k(this, localView));
            this.c.runOnUiThread(new m(this, localView));
            localListIterator.hasNext();
          }
        }
        if (localListIterator.hasNext())
          localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localListIterator.next();
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        continue;
        localRunningAppProcessInfo = null;
        break label61;
        if (i < localArrayList2.size())
        {
          o localo1 = (o)localArrayList2.get(i);
          try
          {
            localo1.c = this.c.getPackageManager().getApplicationIcon(localo1.b);
            this.c.runOnUiThread(new n(this, localArrayList1, i, localo1));
            i++;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException1)
          {
            Logger.errorBadAgrument();
            continue;
          }
        }
        return;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        continue;
      }
      localRunningAppProcessInfo = null;
      break label61;
      localListIterator = null;
      break;
      label488: k++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.j
 * JD-Core Version:    0.6.2
 */