package com.avast.android.mobilesecurity.app.widget;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.RemoteViews;
import com.avast.android.generic.util.m;

class j extends AsyncTask
{
  private AppWidgetManager a;
  private Context b;

  private j(AppWidgetManager paramAppWidgetManager, Context paramContext)
  {
    this.a = paramAppWidgetManager;
    this.b = paramContext;
  }

  protected RemoteViews a(Void[] paramArrayOfVoid)
  {
    m.b("WidgetControlProvider", "Asynchronously updating widget.");
    return WidgetControlProvider.b(this.b);
  }

  protected void a(RemoteViews paramRemoteViews)
  {
    ComponentName localComponentName = new ComponentName(this.b, WidgetControlProvider.class);
    this.a.updateAppWidget(localComponentName, paramRemoteViews);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.widget.j
 * JD-Core Version:    0.6.2
 */