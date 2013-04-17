package com.google.android.mms.pdu;

import com.google.android.mms.InvalidHeaderValueException;

public class GenericPdu
{
  public EncodedStringValue getFrom()
  {
    return null;
  }

  public int getMessageType()
  {
    return 0;
  }

  public int getMmsVersion()
  {
    return 0;
  }

  public void setFrom(EncodedStringValue paramEncodedStringValue)
  {
  }

  public void setMessageType(int paramInt)
    throws InvalidHeaderValueException
  {
  }

  public void setMmsVersion(int paramInt)
    throws InvalidHeaderValueException
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.mms.pdu.GenericPdu
 * JD-Core Version:    0.6.2
 */