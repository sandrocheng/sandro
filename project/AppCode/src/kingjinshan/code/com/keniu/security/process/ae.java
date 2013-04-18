package com.keniu.security.process;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.RemoteViews;
import com.keniu.security.service.ProcessService;
import java.util.ArrayList;
import java.util.List;

final class ae
  implements Runnable
{
  private Context b;
  private ActivityManager c;
  private ActivityManager.MemoryInfo d;
  private float e;
  private RemoteViews f;
  private ComponentName g;
  private AppWidgetManager h;
  private List i;
  private List j;
  private int k;

  public ae(ProcessWidget paramProcessWidget, Context paramContext)
  {
    this.b = paramContext;
    this.c = ((ActivityManager)this.b.getSystemService("activity"));
    this.d = new ActivityManager.MemoryInfo();
    this.f = new RemoteViews(this.b.getPackageName(), 2130903259);
    this.g = new ComponentName(this.b, ProcessWidget.class);
    this.h = AppWidgetManager.getInstance(this.b);
    this.i = new ArrayList();
    Intent localIntent1 = new Intent(this.b, ProcessService.class);
    localIntent1.putExtra("process_service_type", "clear");
    PendingIntent localPendingIntent1 = PendingIntent.getService(this.b, 0, localIntent1, 0);
    Intent localIntent2 = new Intent(this.b, ProcessManagerActivity.class);
    PendingIntent localPendingIntent2 = PendingIntent.getActivity(this.b, 0, localIntent2, 0);
    this.f.setOnClickPendingIntent(2131231524, localPendingIntent1);
    this.f.setOnClickPendingIntent(2131231522, localPendingIntent2);
    this.f.setOnClickPendingIntent(2131231523, localPendingIntent2);
  }

  private int a()
  {
    this.i.clear();
    this.j = this.c.getRunningAppProcesses();
    if (this.j == null);
    for (int n = 0; ; n = this.i.size() - 1)
    {
      return n;
      this.k = this.j.size();
      for (int m = 0; m < this.k; m++)
        for (String str : ((ActivityManager.RunningAppProcessInfo)this.j.get(m)).pkgList)
          if (!this.i.contains(str))
            this.i.add(str);
    }
  }

  public final void run()
  {
    this.c.getMemoryInfo(this.d);
    this.e = ((float)this.d.availMem / 1024.0F / 1024.0F);
    RemoteViews localRemoteViews1 = this.f;
    String str1 = this.b.getString(2131428686);
    Object[] arrayOfObject1 = new Object[1];
    this.i.clear();
    this.j = this.c.getRunningAppProcesses();
    int n;
    if (this.j == null)
      n = 0;
    while (true)
    {
      arrayOfObject1[0] = Integer.valueOf(n);
      localRemoteViews1.setTextViewText(2131231522, String.format(str1, arrayOfObject1));
      RemoteViews localRemoteViews2 = this.f;
      String str2 = this.b.getString(2131428687);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(this.e);
      localRemoteViews2.setTextViewText(2131231523, String.format(str2, arrayOfObject2));
      try
      {
        this.h.updateAppWidget(this.g, this.f);
        label161: if (ProcessWidget.b() != null)
          ProcessWidget.b().postDelayed(this, 10000L);
        return;
        this.k = this.j.size();
        for (int m = 0; m < this.k; m++)
          for (String str3 : ((ActivityManager.RunningAppProcessInfo)this.j.get(m)).pkgList)
            if (!this.i.contains(str3))
              this.i.add(str3);
        n = this.i.size() - 1;
      }
      catch (Exception localException)
      {
        break label161;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.ae
 * JD-Core Version:    0.6.2
 */