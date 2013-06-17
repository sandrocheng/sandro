package com.avg.widget.model.plugin;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.widget.RemoteViews;
import java.io.Serializable;

public abstract class WidgetPlugin
  implements Parcelable
{
  protected boolean a;
  protected boolean b;
  protected a c;

  protected WidgetPlugin(Parcel paramParcel)
  {
    this.a = Boolean.parseBoolean(paramParcel.readString());
    this.b = Boolean.parseBoolean(paramParcel.readString());
  }

  protected WidgetPlugin(a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c = parama;
    this.a = paramBoolean1;
    this.b = paramBoolean2;
  }

  protected PendingIntent a(Context paramContext, int paramInt, Serializable[] paramArrayOfSerializable)
  {
    Intent localIntent = new Intent(paramContext, e());
    localIntent.putExtra("__SAC", 25000);
    localIntent.putExtra("__SAC2", 4);
    localIntent.putExtra("WidgetItem", j());
    for (int i = 0; i < paramArrayOfSerializable.length; i += 2)
      localIntent.putExtra((String)paramArrayOfSerializable[i], paramArrayOfSerializable[(i + 1)]);
    return PendingIntent.getService(paramContext, paramInt, localIntent, 134217728);
  }

  protected abstract String a(Context paramContext);

  public void a(Context paramContext, Handler paramHandler)
  {
  }

  protected void a(RemoteViews paramRemoteViews, com.avg.widget.model.a parama)
  {
    int i = parama.e();
    int j;
    int k;
    int m;
    if (b())
    {
      j = 0;
      paramRemoteViews.setViewVisibility(i, j);
      k = parama.c();
      boolean bool = a();
      m = 0;
      if (!bool)
        break label58;
    }
    while (true)
    {
      paramRemoteViews.setViewVisibility(k, m);
      return;
      j = 8;
      break;
      label58: m = 8;
    }
  }

  protected void a(RemoteViews paramRemoteViews, com.avg.widget.model.a parama, Context paramContext)
  {
    if (this.c.a() > -1)
      paramRemoteViews.setImageViewResource(parama.b(), this.c.a());
    if (a())
      paramRemoteViews.setTextViewText(parama.c(), a(paramContext));
    if (b())
      paramRemoteViews.setTextViewText(parama.e(), f());
  }

  public abstract boolean a();

  public abstract boolean a(Context paramContext, com.avg.widget.model.a parama, RemoteViews paramRemoteViews, boolean paramBoolean);

  public abstract boolean b();

  public abstract Class c();

  public abstract int d();

  public int describeContents()
  {
    return 0;
  }

  protected abstract Class e();

  protected abstract String f();

  public abstract String g();

  public abstract int h();

  public abstract int i();

  public abstract int j();

  public boolean l()
  {
    return this.a;
  }

  public boolean m()
  {
    return this.b;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(String.valueOf(this.a));
    paramParcel.writeString(String.valueOf(this.b));
    paramParcel.writeSerializable(this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.model.plugin.WidgetPlugin
 * JD-Core Version:    0.6.2
 */