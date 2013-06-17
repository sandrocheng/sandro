package com.antivirus.widget.filescanner;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.antivirus.AVService;
import com.antivirus.ui.protection.FileScannerActivity;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.avg.ui.general.o;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.io.Serializable;

public class FileScannerWidgetPlugin extends WidgetPlugin
{
  public static final Parcelable.Creator CREATOR = new a();

  public FileScannerWidgetPlugin()
  {
    super(b.a, false, false);
  }

  public FileScannerWidgetPlugin(Parcel paramParcel)
  {
    super(paramParcel);
    this.c = ((b)paramParcel.readSerializable());
  }

  private PendingIntent b(Context paramContext)
  {
    return a(paramContext, 5, k());
  }

  private Serializable[] k()
  {
    Serializable[] arrayOfSerializable;
    if (o.c())
    {
      arrayOfSerializable = new Serializable[2];
      arrayOfSerializable[0] = "EXTRA_GOTO";
      arrayOfSerializable[1] = Integer.valueOf(4);
    }
    while (true)
    {
      return arrayOfSerializable;
      arrayOfSerializable = new Serializable[0];
    }
  }

  protected String a(Context paramContext)
  {
    return "";
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
    a(paramContext, parama, paramRemoteViews);
    return true;
  }

  public boolean b()
  {
    return false;
  }

  public Class c()
  {
    if (o.c());
    for (Object localObject = DualPaneActivity.class; ; localObject = FileScannerActivity.class)
      return localObject;
  }

  public int d()
  {
    return 4;
  }

  protected Class e()
  {
    return AVService.class;
  }

  protected String f()
  {
    return "";
  }

  public String g()
  {
    return "widget_file_scanner";
  }

  public int h()
  {
    return 2131296524;
  }

  public int i()
  {
    return 2130837918;
  }

  public int j()
  {
    return 6;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.filescanner.FileScannerWidgetPlugin
 * JD-Core Version:    0.6.2
 */