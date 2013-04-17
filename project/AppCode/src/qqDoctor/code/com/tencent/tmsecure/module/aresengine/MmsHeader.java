package com.tencent.tmsecure.module.aresengine;

import android.os.Parcel;
import com.tencent.tmsecure.common.BaseEntity;

public class MmsHeader extends BaseEntity
{
  public int messageType;
  public byte[] messageclass;
  public int mmsVersion;
  public int phonenumCharset;
  public String subject;
  public int subjectCharset;
  public byte[] transactionId;

  public MmsHeader()
  {
  }

  MmsHeader(Parcel paramParcel)
  {
    this.phonenumCharset = paramParcel.readInt();
    this.subject = paramParcel.readString();
    this.subjectCharset = paramParcel.readInt();
    int i = paramParcel.readInt();
    if (i > 0)
    {
      this.messageclass = new byte[i];
      paramParcel.readByteArray(this.messageclass);
    }
    this.messageType = paramParcel.readInt();
    int j = paramParcel.readInt();
    if (j > 0)
    {
      this.transactionId = new byte[j];
      paramParcel.readByteArray(this.transactionId);
    }
    this.mmsVersion = paramParcel.readInt();
  }

  void a(Parcel paramParcel)
  {
    paramParcel.writeInt(this.phonenumCharset);
    paramParcel.writeString(this.subject);
    paramParcel.writeInt(this.subjectCharset);
    if (this.messageclass != null)
    {
      paramParcel.writeInt(this.messageclass.length);
      paramParcel.writeByteArray(this.messageclass);
      paramParcel.writeInt(this.messageType);
      if (this.transactionId == null)
        break label97;
      paramParcel.writeInt(this.transactionId.length);
      paramParcel.writeByteArray(this.transactionId);
    }
    while (true)
    {
      paramParcel.writeInt(this.mmsVersion);
      return;
      paramParcel.writeInt(0);
      break;
      label97: paramParcel.writeInt(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.MmsHeader
 * JD-Core Version:    0.6.2
 */