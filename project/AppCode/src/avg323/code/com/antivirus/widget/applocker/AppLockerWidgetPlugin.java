package com.antivirus.widget.applocker;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.antivirus.AVService;
import com.antivirus.ui.privacy.PrivacyActivity;
import com.avg.widget.model.plugin.WidgetTrialPlugin;
import java.io.Serializable;

public class AppLockerWidgetPlugin extends WidgetTrialPlugin
{
  public static final Parcelable.Creator CREATOR = new a();
  private int i;

  public AppLockerWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((b)paramParcel.readSerializable());
  }

  public AppLockerWidgetPlugin(boolean paramBoolean)
  {
    super(b.b, 2131296553, 2131296554, 2131296555, 2130837730, paramBoolean);
  }

  private PendingIntent b(Context paramContext)
  {
    return a(paramContext, 2, new Serializable[0]);
  }

  public static Bundle k()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_plugin_id", 5);
    return localBundle;
  }

  protected String a(Context paramContext)
  {
    return null;
  }

  protected void a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews)
  {
    a(paramRemoteViews, parama, paramContext);
    a(paramRemoteViews, parama);
    paramRemoteViews.setOnClickPendingIntent(parama.a(), b(paramContext));
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    this.h = parama.d.equals(com.avg.toolkit.e.c.c);
  }

  public boolean a()
  {
    return false;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    this.i = new com.antivirus.applocker.c().g(paramContext);
    this.c = b.a(this.i);
    a(paramContext, parama, paramRemoteViews);
    return true;
  }

  public boolean b()
  {
    return ((b)this.c).equals(b.a);
  }

  public Class c()
  {
    return PrivacyActivity.class;
  }

  public int d()
  {
    return 6;
  }

  protected Class e()
  {
    return AVService.class;
  }

  protected String f()
  {
    return " " + String.valueOf(this.i) + " ";
  }

  public String g()
  {
    return "widget_app_locker";
  }

  public int h()
  {
    return 2131296528;
  }

  public int i()
  {
    return 2130837914;
  }

  public int j()
  {
    return 5;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.applocker.AppLockerWidgetPlugin
 * JD-Core Version:    0.6.2
 */