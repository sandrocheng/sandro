package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.mobilesecurity.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

class n extends BroadcastReceiver
{
  n(GlobalActivityLogFragment paramGlobalActivityLogFragment)
  {
  }

  private void a()
  {
    HashSet localHashSet = new HashSet();
    List localList = this.a.a();
    if (localList.size() > 0)
    {
      ArrayList localArrayList = new ArrayList(GlobalActivityLogFragment.c(this.a).keySet());
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localHashSet.add(localArrayList.get(((Integer)localIterator.next()).intValue()));
    }
    GlobalActivityLogFragment.d(this.a).a(localHashSet);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("position", 0);
    boolean bool = paramIntent.getBooleanExtra("value", false);
    GlobalActivityLogFragment.a(this.a)[i] = bool;
    a();
    GlobalActivityLogFragment.b(this.a);
    ArrayList localArrayList = new ArrayList(GlobalActivityLogFragment.c(this.a).values());
    GlobalActivityLogFragment localGlobalActivityLogFragment = this.a;
    String str = (String)localArrayList.get(i);
    if (bool);
    for (long l = 1L; ; l = -1L)
    {
      localGlobalActivityLogFragment.a("ms-ActivityLog", "filter changed", str, l);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.n
 * JD-Core Version:    0.6.2
 */