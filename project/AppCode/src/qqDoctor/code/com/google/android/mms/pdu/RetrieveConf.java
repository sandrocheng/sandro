package com.google.android.mms.pdu;

import com.google.android.mms.InvalidHeaderValueException;

public class RetrieveConf extends MultimediaMessagePdu
{
  public RetrieveConf()
    throws InvalidHeaderValueException
  {
  }

  public void addCc(EncodedStringValue paramEncodedStringValue)
  {
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

  public EncodedStringValue getFrom()
  {
    return null;
  }

  public byte[] getMessageClass()
  {
    return null;
  }

  public byte[] getMessageId()
  {
    return null;
  }

  public int getReadReport()
  {
    return 0;
  }

  public int getRetrieveStatus()
  {
    return 0;
  }

  public EncodedStringValue getRetrieveText()
  {
    return null;
  }

  public byte[] getTransactionId()
  {
    return null;
  }

  public void setContentType(byte[] paramArrayOfByte)
    throws InvalidHeaderValueException
  {
  }

  public void setDeliveryReport(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setFrom(EncodedStringValue paramEncodedStringValue)
  {
  }

  public void setMessageClass(byte[] paramArrayOfByte)
  {
  }

  public void setMessageId(byte[] paramArrayOfByte)
  {
  }

  public void setReadReport(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setRetrieveStatus(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setRetrieveText(EncodedStringValue paramEncodedStringValue)
  {
  }

  public void setTransactionId(byte[] paramArrayOfByte)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.mms.pdu.RetrieveConf
 * JD-Core Version:    0.6.2
 */