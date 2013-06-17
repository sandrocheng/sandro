package com.avg.tuneup.taskkiller.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.avg.a.d;
import com.avg.a.g;
import com.avg.tuneup.j;
import com.avg.tuneup.taskkiller.o;
import com.avg.ui.general.c.i;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;
import java.util.ArrayList;

public class CloseAllTasksWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new c();

  public CloseAllTasksWidgetPlugin()
  {
    super(a.a, true, false);
  }

  protected CloseAllTasksWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((a)paramParcel.readSerializable());
  }

  protected String a(Context paramContext)
  {
    return null;
  }

  public void a(Context paramContext, Handler paramHandler)
  {
    o localo = new o(paramContext.getPackageName());
    int i = localo.a(paramContext, false, true).size();
    localo.a(paramContext);
    try
    {
      Thread.sleep(200L);
      if (i - localo.a(paramContext, false, true).size() <= 0)
      {
        str2 = paramContext.getString(g.widget_close_nothing_to_close);
        paramHandler.post(new b(this, paramContext, str2));
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a("Something happened when Kill All Service was sleeping");
        continue;
        String str1 = i.a(localo.a());
        String str2 = paramContext.getString(g.widget_close_all_issue) + " " + str1;
      }
    }
  }

  public boolean a()
  {
    return false;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    a(paramRemoteViews, parama, paramContext);
    a(paramRemoteViews, parama);
    PendingIntent localPendingIntent = a(paramContext, 4, new Serializable[0]);
    paramRemoteViews.setOnClickPendingIntent(parama.a(), localPendingIntent);
    return false;
  }

  public boolean b()
  {
    return false;
  }

  public Class c()
  {
    return null;
  }

  public int d()
  {
    return -1;
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
    return "widget_close_all";
  }

  public int h()
  {
    return g.widget_close_all_item;
  }

  public int i()
  {
    return d.widget_settings_close_all;
  }

  public int j()
  {
    return 8;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.widget.CloseAllTasksWidgetPlugin
 * JD-Core Version:    0.6.2
 */