package com.antivirus.applocker;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.antivirus.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

class i extends AsyncTask
{
  public volatile boolean a = true;
  final String[] b = { "com.android.settings" };
  Map c;

  public i(g paramg, Context paramContext)
  {
    this.c = new c().a(paramContext);
  }

  protected Boolean a(String[] paramArrayOfString)
  {
    while (true)
    {
      int i;
      try
      {
        Intent localIntent = new Intent("android.intent.action.MAIN", null);
        localIntent.addCategory("android.intent.category.LAUNCHER");
        PackageManager localPackageManager = g.c(this.d).getPackageManager();
        List localList1 = localPackageManager.queryIntentActivities(localIntent, 0);
        Collections.sort(localList1, new j(this, null));
        ListIterator localListIterator = localList1.listIterator();
        List localList2 = localPackageManager.queryIntentActivities(new Intent("android.settings.SETTINGS"), 0);
        if (localList2.size() >= 1)
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localList2.get(0);
          k localk2 = new k(this.d);
          localk2.b = localResolveInfo;
          localk2.a = localk2.b.loadLabel(localPackageManager).toString();
          String str2 = localk2.b.activityInfo.packageName;
          if (this.c != null)
          {
            if ((this.c.keySet().contains(str2)) && (((Boolean)this.c.get(str2)).booleanValue()))
              localk2.d = true;
            localk2.c = localk2.b.loadIcon(localPackageManager);
          }
          publishProgress(new k[] { localk2 });
        }
        if ((this.a) && (localListIterator.hasNext()))
        {
          k localk1 = new k(this.d);
          localk1.b = ((ResolveInfo)localListIterator.next());
          localk1.a = localk1.b.loadLabel(localPackageManager).toString();
          String str1 = localk1.b.activityInfo.packageName;
          i = 0;
          if (i >= this.b.length)
            break label457;
          if (!str1.contains(this.b[i]))
            break label451;
          j = 1;
          if (j != 0)
            continue;
          if ((this.c != null) && (this.c.keySet().contains(str1)) && (((Boolean)this.c.get(str1)).booleanValue()))
            localk1.d = true;
          localk1.c = localk1.b.loadIcon(localPackageManager);
          publishProgress(new k[] { localk1 });
          continue;
        }
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
      return Boolean.valueOf(true);
      label451: i++;
      continue;
      label457: int j = 0;
    }
  }

  protected void a(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    try
    {
      g.b(this.d).notifyDataSetChanged();
      TextView localTextView = (TextView)g.d(this.d).findViewById(2131230993);
      if (this.d.h() != null)
      {
        localTextView.setText(m.a(this.d.h(), 2131296551) + " (" + g.a(this.d).size() + ")");
        if (g.a(this.d).size() == g.e(this.d).length)
          ((CheckBox)g.d(this.d).findViewById(2131230994)).setChecked(true);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  protected void a(k[] paramArrayOfk)
  {
    try
    {
      if (this.a)
      {
        if (paramArrayOfk.length > 1);
        g.a(this.d).add(paramArrayOfk[0]);
        g.b(this.d).notifyDataSetChanged();
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  protected void onCancelled()
  {
    this.a = false;
    super.onCancelled();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.i
 * JD-Core Version:    0.6.2
 */