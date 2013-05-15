package com.avast.android.mobilesecurity.app.campaign;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public abstract class CampaignEvent
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  private final e a;
  private final f b;
  private final Bundle c;

  protected CampaignEvent(Parcel paramParcel)
  {
    this.a = e.a(paramParcel.readInt());
    this.b = f.a(paramParcel.readInt());
    this.c = paramParcel.readBundle();
  }

  protected CampaignEvent(e parame, f paramf, Bundle paramBundle)
  {
    this.a = parame;
    this.b = paramf;
    this.c = paramBundle;
  }

  public e a()
  {
    return this.a;
  }

  public abstract String a(String paramString);

  public abstract void a(Context paramContext);

  public abstract boolean a(Context paramContext, String paramString);

  public f b()
  {
    return this.b;
  }

  public Bundle c()
  {
    return new Bundle(this.c);
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "CampaignEvent [eventType=" + this.a + ", campaignType=" + this.b + ", parameters=" + this.c + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeSerializable(getClass());
    paramParcel.writeInt(this.a.a());
    paramParcel.writeInt(this.b.a());
    paramParcel.writeBundle(this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.CampaignEvent
 * JD-Core Version:    0.6.2
 */