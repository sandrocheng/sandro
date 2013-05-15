package com.dolphin.browser.addons;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;

public class AlertDialogBuilder
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new e();
  public Bitmap a;
  public String b;
  public RemoteViews c;
  public String d;
  public String e;
  public PendingIntent f;
  public Message g;
  public String h;
  public PendingIntent i;
  public Message j;
  public String k;
  public PendingIntent l;
  public Message m;
  public boolean n;
  public PendingIntent o;
  public Message p;
  public RemoteViews q;

  public AlertDialogBuilder()
  {
  }

  private AlertDialogBuilder(Parcel paramParcel)
  {
    this.a = ((Bitmap)paramParcel.readParcelable(null));
    this.b = paramParcel.readString();
    this.c = ((RemoteViews)paramParcel.readParcelable(null));
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = ((PendingIntent)paramParcel.readParcelable(null));
    this.h = paramParcel.readString();
    this.i = ((PendingIntent)paramParcel.readParcelable(null));
    this.k = paramParcel.readString();
    this.l = ((PendingIntent)paramParcel.readParcelable(null));
    if (paramParcel.readInt() == 1);
    for (boolean bool = true; ; bool = false)
    {
      this.n = bool;
      this.o = ((PendingIntent)paramParcel.readParcelable(null));
      this.q = ((RemoteViews)paramParcel.readParcelable(null));
      this.g = ((Message)paramParcel.readParcelable(null));
      this.j = ((Message)paramParcel.readParcelable(null));
      this.m = ((Message)paramParcel.readParcelable(null));
      this.p = ((Message)paramParcel.readParcelable(null));
      return;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, 0);
    paramParcel.writeString(this.b);
    paramParcel.writeParcelable(this.c, 0);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeParcelable(this.f, 0);
    paramParcel.writeString(this.h);
    paramParcel.writeParcelable(this.i, 0);
    paramParcel.writeString(this.k);
    paramParcel.writeParcelable(this.l, 0);
    if (this.n);
    for (int i1 = 1; ; i1 = 0)
    {
      paramParcel.writeInt(i1);
      paramParcel.writeParcelable(this.o, 0);
      paramParcel.writeParcelable(this.q, 0);
      paramParcel.writeParcelable(this.g, 0);
      paramParcel.writeParcelable(this.j, 0);
      paramParcel.writeParcelable(this.m, 0);
      paramParcel.writeParcelable(this.p, 0);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.AlertDialogBuilder
 * JD-Core Version:    0.6.2
 */