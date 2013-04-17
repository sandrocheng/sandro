package com.google.android.mms.pdu;

import com.google.android.mms.InvalidHeaderValueException;

public class SendReq extends MultimediaMessagePdu
{
  public void addBcc(EncodedStringValue paramEncodedStringValue)
  {
  }

  public void addCc(EncodedStringValue paramEncodedStringValue)
  {
  }

  public EncodedStringValue[] getBcc()
  {
    return null;
  }

  public EncodedStringValue[] getCc()
  {
    return null;
  }

  public byte[] getContentType()
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

  public byte[] getMessageClass()
  {
    return null;
  }

  public long getMessageSize()
  {
    return 0L;
  }

  public int getReadReport()
  {
    return 0;
  }

  public byte[] getTransactionId()
  {
    return null;
  }

  public void setBcc(EncodedStringValue[] paramArrayOfEncodedStringValue)
  {
  }

  public void setCc(EncodedStringValue[] paramArrayOfEncodedStringValue)
  {
  }

  public void setContentType(byte[] paramArrayOfByte)
  {
  }

  public void setDeliveryReport(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setExpiry(long paramLong)
  {
  }

  public void setMessageClass(byte[] paramArrayOfByte)
  {
  }

  public void setMessageSize(long paramLong)
  {
  }

  public void setReadReport(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setTo(EncodedStringValue[] paramArrayOfEncodedStringValue)
  {
  }

  public void setTransactionId(byte[] paramArrayOfByte)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.mms.pdu.SendReq
 * JD-Core Version:    0.6.2
 */