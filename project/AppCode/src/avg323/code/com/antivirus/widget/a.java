package com.antivirus.widget;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.provider.Settings.System;
import com.antivirus.ui.main.ActivationActivity;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.antivirus.widget.appbackup.AppBackupWidgetPlugin;
import com.antivirus.widget.applocker.AppLockerWidgetPlugin;
import com.antivirus.widget.filescanner.FileScannerWidgetPlugin;
import com.antivirus.widget.protection.ProtectionWidgetPlugin;
import com.antivirus.widget.update.UpdateWidgetPlugin;
import com.avg.toolkit.e.c;
import com.avg.toolkit.f;
import com.avg.tuneup.battery.widget.BatteryWidgetPlugin;
import com.avg.tuneup.storage.widget.StorageWidgetPlugin;
import com.avg.tuneup.taskkiller.widget.CloseAllTasksWidgetPlugin;
import com.avg.tuneup.taskkiller.widget.TaskKillerWidgetPlugin;
import com.avg.tuneup.traffic.s;
import com.avg.tuneup.traffic.widget.TrafficWidgetPlugin;
import com.avg.widget.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class a extends g
{
  private com.antivirus.widget.a.a f;

  public a(Context paramContext, Handler paramHandler, com.avg.toolkit.e.a parama, boolean paramBoolean)
  {
    super(paramContext, paramHandler, parama, paramBoolean);
    this.f = new com.antivirus.widget.a.a(paramContext);
    paramContext.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.f);
  }

  private boolean u()
  {
    return a(2);
  }

  protected int[] a()
  {
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = 1;
    if (s.b(this.a));
    for (int i = 3; ; i = 6)
    {
      arrayOfInt[1] = i;
      arrayOfInt[2] = 2;
      arrayOfInt[3] = 4;
      return arrayOfInt;
    }
  }

  protected ComponentName c()
  {
    return new ComponentName(this.a.getPackageName(), AvWidgetProvider.class.getCanonicalName());
  }

  protected void d()
  {
    this.e.put(Integer.valueOf(1), new ProtectionWidgetPlugin());
    this.e.put(Integer.valueOf(3), new TrafficWidgetPlugin());
    this.e.put(Integer.valueOf(2), new BatteryWidgetPlugin());
    this.e.put(Integer.valueOf(4), new TaskKillerWidgetPlugin());
    this.e.put(Integer.valueOf(8), new CloseAllTasksWidgetPlugin());
    this.e.put(Integer.valueOf(5), new AppLockerWidgetPlugin(this.c.d.equals(c.c)));
    this.e.put(Integer.valueOf(6), new FileScannerWidgetPlugin());
    this.e.put(Integer.valueOf(9), new UpdateWidgetPlugin());
    this.e.put(Integer.valueOf(7), new AppBackupWidgetPlugin(this.c.h.equals(c.c)));
    this.e.put(Integer.valueOf(10), new StorageWidgetPlugin());
  }

  protected void e()
  {
    c(BatteryWidgetPlugin.k());
    c(AppBackupWidgetPlugin.k());
  }

  protected void f()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("__SAD", false);
    f.a(this.a, 11000, 6, localBundle);
  }

  protected int g()
  {
    return 2130837909;
  }

  protected int h()
  {
    return 2130837908;
  }

  protected Class i()
  {
    return AvWidgetConfigurationActivity.class;
  }

  protected Parcelable[] j()
  {
    ArrayList localArrayList = new ArrayList(this.e.values());
    if (!s.b(this.a))
      localArrayList.remove(this.e.get(Integer.valueOf(3)));
    Collections.sort(localArrayList, new b(this));
    return (Parcelable[])localArrayList.toArray(new Parcelable[localArrayList.size()]);
  }

  protected Class k()
  {
    return ActivationActivity.class;
  }

  protected void l()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("__SAD", u());
    f.a(this.a, 11000, 6, localBundle);
  }

  protected Class m()
  {
    return DualPaneActivity.class;
  }

  public void onDestroy()
  {
    super.onDestroy();
    if ((this.f != null) && (this.a != null))
      this.a.getContentResolver().unregisterContentObserver(this.f);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.a
 * JD-Core Version:    0.6.2
 */