package com.hoi.netstat;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class c extends e
{
  c(NetStatActivity paramNetStatActivity)
  {
    super(paramNetStatActivity);
  }

  private void a(g paramg, boolean paramBoolean)
  {
    if (paramBoolean);
    ArrayList localArrayList2;
    String str3;
    for (String str1 = "[8]\r\n"; ; str1 = "[jni]\r\n")
    {
      ArrayList localArrayList1 = paramg.c();
      localArrayList2 = paramg.d();
      StringBuilder localStringBuilder = new StringBuilder().append(str1);
      String str2 = NetStatActivity.b() + "\r\n";
      Iterator localIterator1 = localArrayList1.iterator();
      j localj;
      for (str3 = str2; localIterator1.hasNext(); str3 = str3 + "old." + localj.a() + "\r\n")
        localj = (j)localIterator1.next();
    }
    Iterator localIterator2 = localArrayList2.iterator();
    h localh;
    for (String str4 = str3; localIterator2.hasNext(); str4 = str4 + "new." + localh.a() + "\r\n")
      localh = (h)localIterator2.next();
    String str5 = str4 + "total.tx." + paramg.a() + ",rx." + paramg.b() + "\r\n";
    String str6 = str5 + "mobile.tx." + paramg.a(this.a) + ",rx." + paramg.b(this.a) + "\r\n";
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    Iterator localIterator3 = this.a.getPackageManager().queryIntentActivities(localIntent, 0).iterator();
    String str8;
    long l1;
    long l2;
    for (String str7 = str6; localIterator3.hasNext(); str7 = str7 + str8 + "[" + l1 + "/" + l2 + "]" + "\r\n")
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator3.next();
      int i = localResolveInfo.activityInfo.applicationInfo.uid;
      str8 = localResolveInfo.activityInfo.applicationInfo.packageName;
      l1 = paramg.b(i);
      l2 = paramg.a(i);
    }
    NetStatActivity.a(this.a, "ijinshan_netstat.txt", str7);
    NetStatActivity.a("ok");
    NetStatActivity.a(this.a).sendEmptyMessage(0);
  }

  public final void a()
  {
    a(f.a(), false);
    if (f.b())
      a(f.c(), true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.c
 * JD-Core Version:    0.6.2
 */