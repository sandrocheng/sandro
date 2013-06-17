package com.antivirus.widget.protection;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.antivirus.AVService;
import com.antivirus.core.scanners.c;
import com.antivirus.core.scanners.h;
import com.antivirus.ui.main.HandheldMainActivity;
import com.antivirus.ui.scan.results.ScanResultsActivity;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.avg.ui.general.o;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;

public class ProtectionWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new b();
  private c d;
  private String e;

  public ProtectionWidgetPlugin()
  {
    super(a.c, false, false);
  }

  private ProtectionWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((a)paramParcel.readSerializable());
  }

  private PendingIntent b(Context paramContext)
  {
    Serializable[] arrayOfSerializable;
    switch (c.a[((a)this.c).ordinal()])
    {
    default:
      throw new IllegalStateException("Not supported protection state: " + this.c);
    case 1:
    case 2:
      arrayOfSerializable = new Serializable[6];
      arrayOfSerializable[0] = "ScannerClient";
      arrayOfSerializable[1] = Boolean.valueOf(true);
      arrayOfSerializable[2] = "StartedFromWidget";
      arrayOfSerializable[3] = Boolean.valueOf(true);
      arrayOfSerializable[4] = "avmsStartScan";
      arrayOfSerializable[5] = Boolean.valueOf(true);
    case 3:
    }
    for (PendingIntent localPendingIntent = a(paramContext, 6, arrayOfSerializable); ; localPendingIntent = a(paramContext, 6, n()))
      return localPendingIntent;
  }

  public static Bundle k()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_plugin_id", 1);
    return localBundle;
  }

  private Serializable[] n()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[4];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(1);
      arrayOfSerializable[2] = "ScannerClient";
      arrayOfSerializable[3] = this.d;
    }
    while (true)
    {
      return arrayOfSerializable;
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "ScannerClient";
      arrayOfSerializable[1] = this.d;
    }
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

  public boolean a()
  {
    return false;
  }

  public boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    h localh = new h();
    localh.a(paramContext);
    long l = localh.b;
    int i = localh.e();
    a locala;
    if (l == 0L)
      locala = a.c;
    while (true)
    {
      this.c = locala;
      if (((a)this.c).equals(a.b))
      {
        this.d = c.a;
        this.e = String.valueOf(i);
      }
      a(paramContext, parama, paramRemoteViews);
      return true;
      if (i > 0)
        locala = a.b;
      else
        locala = a.a;
    }
  }

  public boolean b()
  {
    return ((a)this.c).equals(a.b);
  }

  public Class c()
  {
    Object localObject;
    if (o.c())
      localObject = DualPaneActivity.class;
    while (true)
    {
      return localObject;
      switch (c.a[((a)this.c).ordinal()])
      {
      default:
        throw new IllegalStateException("Illegal protection state");
      case 1:
      case 2:
        localObject = HandheldMainActivity.class;
        break;
      case 3:
        localObject = ScanResultsActivity.class;
      }
    }
  }

  public int d()
  {
    return 1;
  }

  protected Class e()
  {
    return AVService.class;
  }

  protected String f()
  {
    if (this.e == null);
    for (String str = ""; ; str = this.e)
      return str;
  }

  public String g()
  {
    return "widget_protection";
  }

  public int h()
  {
    return 2131296783;
  }

  public int i()
  {
    return 2130837921;
  }

  public int j()
  {
    return 1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.protection.ProtectionWidgetPlugin
 * JD-Core Version:    0.6.2
 */