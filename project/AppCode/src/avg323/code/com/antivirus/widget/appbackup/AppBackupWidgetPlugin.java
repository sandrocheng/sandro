package com.antivirus.widget.appbackup;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.antivirus.AVService;
import com.antivirus.ui.backup.apps.BackupMainActivity;
import com.antivirus.ui.backup.apps.ah;
import com.avg.widget.model.plugin.WidgetTrialPlugin;
import java.io.Serializable;
import java.util.Date;

public class AppBackupWidgetPlugin extends WidgetTrialPlugin
{
  public static final Parcelable.Creator CREATOR = new a();
  private String i = "";

  public AppBackupWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((b)paramParcel.readSerializable());
  }

  public AppBackupWidgetPlugin(boolean paramBoolean)
  {
    super(b.a, 2131296808, 2131296809, 2131296810, 2130837729, paramBoolean);
  }

  private PendingIntent b(Context paramContext)
  {
    return a(paramContext, 1, new Serializable[0]);
  }

  public static Bundle k()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_plugin_id", 7);
    return localBundle;
  }

  protected String a(Context paramContext)
  {
    return this.i;
  }

  protected void a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews)
  {
    a(paramRemoteViews, parama, paramContext);
    a(paramRemoteViews, parama);
    paramRemoteViews.setOnClickPendingIntent(parama.a(), b(paramContext));
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    this.h = parama.h.equals(com.avg.toolkit.e.c.c);
  }

  public boolean a()
  {
    return true;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    ah.L();
    long l = com.antivirus.c.k();
    if (l == 0L);
    for (this.i = paramContext.getString(2131296667); ; this.i = android.text.format.DateFormat.getDateFormat(paramContext).format(new Date(l)))
    {
      a(paramContext, parama, paramRemoteViews);
      return true;
    }
  }

  public boolean b()
  {
    return false;
  }

  public Class c()
  {
    return BackupMainActivity.class;
  }

  public int d()
  {
    return 7;
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
    return "widget_app_backup";
  }

  public int h()
  {
    return 2131296559;
  }

  public int i()
  {
    return 2130837913;
  }

  public int j()
  {
    return 7;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.appbackup.AppBackupWidgetPlugin
 * JD-Core Version:    0.6.2
 */