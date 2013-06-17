package com.avg.tuneup.traffic.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.avg.a.d;
import com.avg.a.g;
import com.avg.tuneup.j;
import com.avg.tuneup.traffic.DataPlanSettingsActivity;
import com.avg.tuneup.traffic.TrafficMeterActivity;
import com.avg.ui.general.o;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;
import java.text.DecimalFormat;

public class TrafficWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new b();
  private double d = -1.0D;
  private DecimalFormat e = new DecimalFormat("#.#");

  public TrafficWidgetPlugin()
  {
    super(a.i, false, false);
  }

  protected TrafficWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((a)paramParcel.readSerializable());
  }

  public static Bundle k()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_plugin_id", 3);
    return localBundle;
  }

  private Serializable[] n()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(3);
    }
    while (true)
    {
      return arrayOfSerializable;
      arrayOfSerializable = new Serializable[0];
    }
  }

  private Serializable[] o()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[4];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(9);
      arrayOfSerializable[2] = "new_activation";
      arrayOfSerializable[3] = Boolean.valueOf(true);
    }
    while (true)
    {
      return arrayOfSerializable;
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "new_activation";
      arrayOfSerializable[1] = Boolean.valueOf(true);
    }
  }

  protected String a(Context paramContext)
  {
    switch (c.a[((a)this.c).ordinal()])
    {
    default:
    case 1:
    }
    for (String str = this.e.format(this.d) + "%"; ; str = paramContext.getString(g.activation_activate))
      return str;
  }

  public boolean a()
  {
    return true;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    double d1 = com.avg.tuneup.traffic.s.a(paramContext).b()[0];
    a locala = a.a(j.a(), (int)d1);
    double d2 = (int)(d1 * 10.0D) / 10.0D;
    boolean bool1;
    if (!paramBoolean)
      if (a.i.equals(locala))
      {
        boolean bool3 = a.i.equals(this.c);
        bool1 = false;
        if (!bool3);
      }
    while (true)
    {
      return bool1;
      if (!a.i.equals(this.c))
      {
        boolean bool2 = this.d < d2;
        bool1 = false;
        if (!bool2);
      }
      else
      {
        this.c = locala;
        this.d = d2;
        a(paramRemoteViews, parama, paramContext);
        a(paramRemoteViews, parama);
        paramRemoteViews.setOnClickPendingIntent(parama.a(), b(paramContext));
        bool1 = true;
      }
    }
  }

  protected PendingIntent b(Context paramContext)
  {
    if (((a)this.c).b());
    for (PendingIntent localPendingIntent = a(paramContext, 8, n()); ; localPendingIntent = a(paramContext, 8, o()))
      return localPendingIntent;
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
      Object localObject;
      try
      {
        Class localClass = Class.forName("com.antivirus.ui.tablet.DualPaneActivity");
        localObject = localClass;
        return localObject;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
      }
      if (((a)this.c).b())
        localObject = TrafficMeterActivity.class;
      else
        localObject = DataPlanSettingsActivity.class;
    }
  }

  public int d()
  {
    return 3;
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
    return "widget_traffic";
  }

  public int h()
  {
    return g.traffic;
  }

  public int i()
  {
    return d.widget_settings_data_usage;
  }

  public int j()
  {
    return 3;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.widget.TrafficWidgetPlugin
 * JD-Core Version:    0.6.2
 */