package com.avg.tuneup.taskkiller.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.avg.a.g;
import com.avg.tuneup.j;
import com.avg.tuneup.taskkiller.TaskKillerActivity;
import com.avg.ui.general.o;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;

public class TaskKillerWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new e();

  public TaskKillerWidgetPlugin()
  {
    super(d.a, false, false);
  }

  protected TaskKillerWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((d)paramParcel.readSerializable());
  }

  private Serializable[] k()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(5);
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
    PendingIntent localPendingIntent = a(paramContext, 7, k());
    paramRemoteViews.setOnClickPendingIntent(parama.a(), localPendingIntent);
    return true;
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
      Object localObject = TaskKillerActivity.class;
    }
  }

  public int d()
  {
    return 5;
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
    return "widget_task_killer";
  }

  public int h()
  {
    return g.title_task_killer_preference;
  }

  public int i()
  {
    return com.avg.a.d.widget_settings_task_killer;
  }

  public int j()
  {
    return 4;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.widget.TaskKillerWidgetPlugin
 * JD-Core Version:    0.6.2
 */