package com.tencent.tmsecure.module.qscanner;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import byl;
import java.io.Serializable;

public class QScanResultEntity
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<QScanResultEntity> CREATOR = new byl();
  public int advice;
  public int apkType;
  public String certMd5;
  public String discription;
  public String label;
  public int malwareid;
  public String name;
  public String packageName;
  public String path;
  public int size;
  public String softName;
  public int type;
  public String url;
  public String version;
  public int versionCode;

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.packageName);
    paramParcel.writeString(this.softName);
    paramParcel.writeString(this.version);
    paramParcel.writeInt(this.versionCode);
    paramParcel.writeString(this.path);
    paramParcel.writeInt(this.apkType);
    paramParcel.writeString(this.certMd5);
    paramParcel.writeInt(this.size);
    paramParcel.writeInt(this.type);
    paramParcel.writeInt(this.advice);
    paramParcel.writeInt(this.malwareid);
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.label);
    paramParcel.writeString(this.discription);
    paramParcel.writeString(this.url);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.QScanResultEntity
 * JD-Core Version:    0.6.2
 */