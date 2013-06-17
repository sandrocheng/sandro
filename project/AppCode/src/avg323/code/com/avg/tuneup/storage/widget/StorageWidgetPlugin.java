package com.avg.tuneup.storage.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.avg.a.d;
import com.avg.a.g;
import com.avg.tuneup.j;
import com.avg.tuneup.storage.StorageActivity;
import com.avg.ui.general.o;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;

public class StorageWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new a();

  public StorageWidgetPlugin()
  {
    super(b.a, false, false);
  }

  protected StorageWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((b)paramParcel.readSerializable());
  }

  private Serializable[] k()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(10);
    }
    while (true)
    {
      return arrayOfSerializable;
      arrayOfSerializable = new Serializable[0];
    }
  }

  protected String a(Context paramContext)
  {
    return null;
  }

  public boolean a()
  {
    return false;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    a(paramRemoteViews, parama, paramContext);
    a(paramRemoteViews, parama);
    PendingIntent localPendingIntent = a(paramContext, 11, k());
    paramRemoteViews.setOnClickPendingIntent(parama.a(), localPendingIntent);
    return true;
  }

  public boolean b()
  {
    return false;
  }

  public Class c()
  {
    return StorageActivity.class;
  }

  public int d()
  {
    return 10;
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
    return "widget_storage";
  }

  public int h()
  {
    return g.performance_storage;
  }

  public int i()
  {
    return d.widget_settings_storage;
  }

  public int j()
  {
    return 10;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.storage.widget.StorageWidgetPlugin
 * JD-Core Version:    0.6.2
 */