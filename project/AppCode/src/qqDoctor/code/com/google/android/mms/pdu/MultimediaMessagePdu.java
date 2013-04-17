package com.google.android.mms.pdu;

import com.google.android.mms.InvalidHeaderValueException;

public class MultimediaMessagePdu extends GenericPdu
{
  public void addTo(EncodedStringValue paramEncodedStringValue)
  {
  }

  public PduBody getBody()
  {
    return null;
  }

  public long getDate()
  {
    return 0L;
  }

  public int getPriority()
  {
    return 0;
  }

  public EncodedStringValue getSubject()
  {
    return null;
  }

  public EncodedStringValue[] getTo()
  {
    return null;
  }

  public void setBody(PduBody paramPduBody)
  {
  }

  public void setDate(long paramLong)
  {
  }

  public void setPriority(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setSubject(EncodedStringValue paramEncodedStringValue)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.mms.pdu.MultimediaMessagePdu
 * JD-Core Version:    0.6.2
 */