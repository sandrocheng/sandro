package com.google.android.mms.pdu;

import com.google.android.mms.InvalidHeaderValueException;

public class NotificationInd extends GenericPdu
{
  public NotificationInd()
    throws InvalidHeaderValueException
  {
  }

  public int getContentClass()
  {
    return 0;
  }

  public byte[] getContentLocation()
  {
    return null;
  }

  public int getDeliveryReport()
  {
    return 0;
  }

  public long getExpiry()
  {
    return 0L;
  }

  public EncodedStringValue getFrom()
  {
    return null;
  }

  public byte[] getMessageClass()
  {
    return null;
  }

  public long getMessageSize()
  {
    return 0L;
  }

  public EncodedStringValue getSubject()
  {
    return null;
  }

  public byte[] getTransactionId()
  {
    return null;
  }

  public void setContentClass(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setContentLocation(byte[] paramArrayOfByte)
  {
  }

  public void setDeliveryReport(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setExpiry(long paramLong)
  {
  }

  public void setFrom(EncodedStringValue paramEncodedStringValue)
  {
  }

  public void setMessageClass(byte[] paramArrayOfByte)
  {
  }

  public void setMessageSize(long paramLong)
  {
  }

  public void setSubject(EncodedStringValue paramEncodedStringValue)
  {
  }

  public void setTransactionId(byte[] paramArrayOfByte)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.mms.pdu.NotificationInd
 * JD-Core Version:    0.6.2
 */