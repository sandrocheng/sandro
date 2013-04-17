package com.tencent.tmsecure.module.aresengine;

import android.os.Parcel;
import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.NotificationInd;

public class MmsNotificationIndHeader extends MmsHeader
{
  public int contentClass;
  public byte[] contentLocation;
  public int deliveryReport;
  public long expiry;
  public long messageSize;

  public MmsNotificationIndHeader()
  {
  }

  MmsNotificationIndHeader(Parcel paramParcel)
  {
    super(paramParcel);
    this.expiry = paramParcel.readLong();
    this.messageSize = paramParcel.readLong();
    int i = paramParcel.readInt();
    if (i > 0)
    {
      this.contentLocation = new byte[i];
      paramParcel.readByteArray(this.contentLocation);
    }
    this.contentClass = paramParcel.readInt();
    this.deliveryReport = paramParcel.readInt();
  }

  MmsNotificationIndHeader(NotificationInd paramNotificationInd)
  {
    EncodedStringValue localEncodedStringValue = paramNotificationInd.getSubject();
    if (localEncodedStringValue != null)
    {
      this.subject = localEncodedStringValue.getString();
      this.subjectCharset = localEncodedStringValue.getCharacterSet();
    }
    this.contentLocation = paramNotificationInd.getContentLocation();
    this.messageclass = paramNotificationInd.getMessageClass();
    this.messageType = paramNotificationInd.getMessageType();
    this.transactionId = paramNotificationInd.getTransactionId();
    this.expiry = paramNotificationInd.getExpiry();
    this.messageSize = paramNotificationInd.getMessageSize();
    this.contentClass = paramNotificationInd.getContentClass();
    this.deliveryReport = paramNotificationInd.getDeliveryReport();
    this.mmsVersion = paramNotificationInd.getMmsVersion();
  }

  final GenericPdu a(String paramString)
  {
    while (true)
    {
      NotificationInd localNotificationInd;
      try
      {
        localNotificationInd = new NotificationInd();
        if (localNotificationInd == null)
          return localNotificationInd;
      }
      catch (InvalidHeaderValueException localInvalidHeaderValueException5)
      {
        localInvalidHeaderValueException5.printStackTrace();
        localNotificationInd = null;
        continue;
        if (paramString != null)
        {
          EncodedStringValue localEncodedStringValue1 = new EncodedStringValue(paramString);
          localEncodedStringValue1.setCharacterSet(this.phonenumCharset);
          localNotificationInd.setFrom(localEncodedStringValue1);
        }
        if (this.subject != null)
        {
          EncodedStringValue localEncodedStringValue2 = new EncodedStringValue(this.subject);
          localEncodedStringValue2.setCharacterSet(this.subjectCharset);
          localNotificationInd.setSubject(localEncodedStringValue2);
        }
      }
      try
      {
        localNotificationInd.setContentClass(this.contentClass);
        if (this.contentLocation != null)
          localNotificationInd.setContentLocation(this.contentLocation);
      }
      catch (InvalidHeaderValueException localInvalidHeaderValueException3)
      {
        try
        {
          localNotificationInd.setDeliveryReport(this.deliveryReport);
          localNotificationInd.setExpiry(this.expiry);
          if (this.messageclass != null)
            localNotificationInd.setMessageClass(this.messageclass);
          localNotificationInd.setMessageSize(this.messageSize);
        }
        catch (InvalidHeaderValueException localInvalidHeaderValueException3)
        {
          try
          {
            localNotificationInd.setMessageType(this.messageType);
          }
          catch (InvalidHeaderValueException localInvalidHeaderValueException3)
          {
            try
            {
              while (true)
              {
                localNotificationInd.setMmsVersion(this.mmsVersion);
                if (this.transactionId == null)
                  break;
                localNotificationInd.setTransactionId(this.transactionId);
                break;
                localInvalidHeaderValueException1 = localInvalidHeaderValueException1;
                localInvalidHeaderValueException1.printStackTrace();
                continue;
                localInvalidHeaderValueException2 = localInvalidHeaderValueException2;
                localInvalidHeaderValueException2.printStackTrace();
                continue;
                localInvalidHeaderValueException3 = localInvalidHeaderValueException3;
                localInvalidHeaderValueException3.printStackTrace();
              }
            }
            catch (InvalidHeaderValueException localInvalidHeaderValueException4)
            {
              while (true)
                localInvalidHeaderValueException4.printStackTrace();
            }
          }
        }
      }
    }
  }

  final void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    paramParcel.writeLong(this.expiry);
    paramParcel.writeLong(this.messageSize);
    if (this.contentLocation != null)
    {
      paramParcel.writeInt(this.contentLocation.length);
      paramParcel.writeByteArray(this.contentLocation);
    }
    while (true)
    {
      paramParcel.writeInt(this.contentClass);
      paramParcel.writeInt(this.deliveryReport);
      return;
      paramParcel.writeInt(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader
 * JD-Core Version:    0.6.2
 */