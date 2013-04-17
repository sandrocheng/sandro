package com.tencent.tmsecure.module.aresengine;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.NotificationInd;
import com.google.android.mms.pdu.PduParser;

public class SmsEntity extends TelephonyEntity
{
  public static final int PROTOCOL_TYPE_MMS = 1;
  public static final int PROTOCOL_TYPE_SMS = 0;
  public static final int PROTOCOL_TYPE_WAPPUSH = 2;
  public static final int SMS_TYPE_IN = 1;
  public static final int SMS_TYPE_SENT = 2;
  public String body;
  public long date;
  public MmsData mmsData;
  public int protocolType;
  public transient Intent raw;
  public int read;
  public int smstype;
  public int type;

  public SmsEntity()
  {
    this.read = 0;
    this.protocolType = 0;
    this.smstype = this.protocolType;
    this.date = System.currentTimeMillis();
  }

  private SmsEntity(Parcel paramParcel)
  {
    this.id = paramParcel.readInt();
    this.phonenum = paramParcel.readString();
    this.name = paramParcel.readString();
    this.body = paramParcel.readString();
    this.date = paramParcel.readLong();
    this.type = paramParcel.readInt();
    this.protocolType = paramParcel.readInt();
    this.read = paramParcel.readInt();
    this.smstype = paramParcel.readInt();
    this.raw = ((Intent)paramParcel.readParcelable(Intent.class.getClassLoader()));
    if (paramParcel.readByte() == 1)
      this.mmsData = new MmsData(paramParcel);
    if ((this.mmsData == null) && (this.protocolType == 1) && (this.raw != null))
    {
      GenericPdu localGenericPdu = new PduParser(this.raw.getByteArrayExtra("data")).parse();
      if ((localGenericPdu != null) && ((localGenericPdu instanceof NotificationInd)))
      {
        this.mmsData = new MmsData();
        this.mmsData.a((NotificationInd)localGenericPdu);
      }
    }
  }

  public SmsEntity(SmsEntity paramSmsEntity)
  {
    super(paramSmsEntity);
    this.body = paramSmsEntity.body;
    this.date = paramSmsEntity.date;
    this.type = paramSmsEntity.type;
    this.protocolType = paramSmsEntity.protocolType;
    this.read = paramSmsEntity.read;
    this.smstype = paramSmsEntity.smstype;
    this.raw = paramSmsEntity.raw;
    this.mmsData = paramSmsEntity.mmsData;
  }

  public static SmsEntity a(byte[] paramArrayOfByte)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    SmsEntity localSmsEntity = new SmsEntity(localParcel);
    localParcel.recycle();
    return localSmsEntity;
  }

  public static byte[] a(SmsEntity paramSmsEntity)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.writeInt(paramSmsEntity.id);
    localParcel.writeString(paramSmsEntity.phonenum);
    localParcel.writeString(paramSmsEntity.name);
    localParcel.writeString(paramSmsEntity.body);
    localParcel.writeLong(paramSmsEntity.date);
    localParcel.writeInt(paramSmsEntity.type);
    localParcel.writeInt(paramSmsEntity.protocolType);
    localParcel.writeInt(paramSmsEntity.read);
    localParcel.writeInt(paramSmsEntity.smstype);
    localParcel.writeParcelable(paramSmsEntity.raw, 0);
    if (paramSmsEntity.mmsData != null)
    {
      localParcel.writeByte((byte)1);
      paramSmsEntity.mmsData.writeToParcel(localParcel);
    }
    while (true)
    {
      byte[] arrayOfByte = localParcel.marshall();
      localParcel.recycle();
      return arrayOfByte;
      localParcel.writeByte((byte)0);
    }
  }

  public final byte[] b()
  {
    if (this.mmsData != null);
    for (byte[] arrayOfByte = this.mmsData.a(); ; arrayOfByte = null)
      return arrayOfByte;
  }

  public final byte[] c()
  {
    if (this.mmsData != null);
    for (byte[] arrayOfByte = this.mmsData.b(); ; arrayOfByte = null)
      return arrayOfByte;
  }

  final GenericPdu d()
  {
    MmsData localMmsData = this.mmsData;
    GenericPdu localGenericPdu = null;
    if (localMmsData != null)
      localGenericPdu = this.mmsData.a(this.phonenum, this.date);
    return localGenericPdu;
  }

  public String getBody()
  {
    return this.body;
  }

  public void setBody(String paramString)
  {
    if (paramString != null);
    while (true)
    {
      this.body = paramString;
      return;
      paramString = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.SmsEntity
 * JD-Core Version:    0.6.2
 */