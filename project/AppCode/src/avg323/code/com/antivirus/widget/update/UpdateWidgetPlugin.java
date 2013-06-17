package com.antivirus.widget.update;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.antivirus.AVService;
import com.antivirus.ui.protection.ProtectionActivity;
import com.avg.ui.general.o;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;
import java.util.Date;

public class UpdateWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new a();

  public UpdateWidgetPlugin()
  {
    super(b.a, false, false);
  }

  public UpdateWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((b)paramParcel.readSerializable());
  }

  private PendingIntent b(Context paramContext)
  {
    return a(paramContext, 10, n());
  }

  public static Bundle k()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_plugin_id", 9);
    return localBundle;
  }

  private Serializable[] n()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[4];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(8);
      arrayOfSerializable[2] = "launchFormWidget";
      arrayOfSerializable[3] = Boolean.TRUE;
    }
    while (true)
    {
      return arrayOfSerializable;
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "launchFormWidget";
      arrayOfSerializable[1] = Boolean.TRUE;
    }
  }

  protected String a(Context paramContext)
  {
    long l = new com.antivirus.core.b(paramContext).c();
    if (l <= 0L);
    for (String str = "N/A"; ; str = android.text.format.DateFormat.getDateFormat(paramContext).format(new Date(l)))
      return str;
  }

  protected void a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews)
  {
    a(paramRemoteViews, parama, paramContext);
    a(paramRemoteViews, parama);
    paramRemoteViews.setOnClickPendingIntent(parama.a(), b(paramContext));
  }

  public boolean a()
  {
    return true;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    a(paramContext, parama, paramRemoteViews);
    return true;
  }

  public boolean b()
  {
    return false;
  }

  public Class c()
  {
    return ProtectionActivity.class;
  }

  public int d()
  {
    return 8;
  }

  protected Class e()
  {
    return AVService.class;
  }

  protected String f()
  {
    return null;
  }

  public String g()
  {
    return "widget_last_update";
  }

  public int h()
  {
    return 2131296306;
  }

  public int i()
  {
    return 2130837924;
  }

  public int j()
  {
    return 9;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.update.UpdateWidgetPlugin
 * JD-Core Version:    0.6.2
 */