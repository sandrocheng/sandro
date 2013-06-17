package com.avg.tuneup.battery.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.avg.a.d;
import com.avg.a.g;
import com.avg.tuneup.battery.BatterySaveSettingsActivity;
import com.avg.tuneup.j;
import com.avg.ui.general.o;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;

public class BatteryWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new a();
  private int d = -1;
  private boolean e = false;

  public BatteryWidgetPlugin()
  {
    super(b.a, false, false);
  }

  protected BatteryWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((b)paramParcel.readSerializable());
  }

  public static Bundle k()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_plugin_id", 2);
    return localBundle;
  }

  private Serializable[] n()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(2);
    }
    while (true)
    {
      return arrayOfSerializable;
      arrayOfSerializable = new Serializable[0];
    }
  }

  protected String a(Context paramContext)
  {
    return String.valueOf(this.d) + '%';
  }

  public boolean a()
  {
    return true;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    Bundle localBundle = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getExtras();
    int i = localBundle.getInt("level", -1);
    int j = localBundle.getInt("scale", -1);
    boolean bool1;
    int k;
    boolean bool2;
    if (localBundle.getInt("status", -1) == 2)
    {
      bool1 = true;
      k = i * 100 / j;
      if ((paramBoolean) || (this.d != k))
        break label103;
      boolean bool3 = this.e;
      bool2 = false;
      if (bool3 != bool1)
        break label103;
    }
    while (true)
    {
      return bool2;
      bool1 = false;
      break;
      label103: this.d = k;
      this.e = bool1;
      this.c = b.a(k, bool1);
      a(paramRemoteViews, parama, paramContext);
      a(paramRemoteViews, parama);
      PendingIntent localPendingIntent = a(paramContext, 333, n());
      paramRemoteViews.setOnClickPendingIntent(parama.a(), localPendingIntent);
      bool2 = true;
    }
  }

  public boolean b()
  {
    return false;
  }

  public Class c()
  {
    if (o.c());
    while (true)
    {
      try
      {
        Class localClass = Class.forName("com.antivirus.ui.tablet.DualPaneActivity");
        localObject = localClass;
        return localObject;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
      }
      Object localObject = BatterySaveSettingsActivity.class;
    }
  }

  public int d()
  {
    return 9;
  }

  protected Class e()
  {
    try
    {
      Class localClass2 = Class.forName(j.t());
      localClass1 = localClass2;
      return localClass1;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a("Service class was not set");
        Class localClass1 = null;
      }
    }
  }

  protected String f()
  {
    return null;
  }

  public String g()
  {
    return "widget_battery";
  }

  public int h()
  {
    return g.battery_state;
  }

  public int i()
  {
    return d.widget_settings_battary;
  }

  public int j()
  {
    return 2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.widget.BatteryWidgetPlugin
 * JD-Core Version:    0.6.2
 */