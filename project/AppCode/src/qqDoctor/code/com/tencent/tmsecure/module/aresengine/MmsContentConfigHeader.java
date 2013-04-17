package com.tencent.tmsecure.module.aresengine;

import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.RetrieveConf;
import com.google.android.mms.pdu.SendReq;

public class MmsContentConfigHeader extends MmsHeader
{
  public ExtraAddress[] bccAddresses;
  public ExtraAddress[] ccAddresses;
  public byte[] contentType;
  public int deliveryReport;
  public int deliverytime;
  public long expiry;
  public byte[] messageId;
  public long messageSize;
  public int priority;
  public int readReport;
  public int reportAllowed;
  public int responseStatus;
  public String responseText;
  public int retrieveStatus;
  public String retrieveText;
  public int retrieveTextCharset;
  public ExtraAddress[] toAddresses;

  public MmsContentConfigHeader()
  {
  }

  MmsContentConfigHeader(RetrieveConf paramRetrieveConf)
  {
    EncodedStringValue localEncodedStringValue1 = paramRetrieveConf.getFrom();
    if (localEncodedStringValue1 != null)
      this.phonenumCharset = localEncodedStringValue1.getCharacterSet();
    EncodedStringValue localEncodedStringValue2 = paramRetrieveConf.getSubject();
    if (localEncodedStringValue2 != null)
    {
      this.subject = localEncodedStringValue2.getString();
      this.subjectCharset = localEncodedStringValue2.getCharacterSet();
    }
    this.messageclass = paramRetrieveConf.getMessageClass();
    this.messageType = paramRetrieveConf.getMessageType();
    this.transactionId = paramRetrieveConf.getTransactionId();
    this.messageId = paramRetrieveConf.getMessageId();
    this.contentType = paramRetrieveConf.getContentType();
    this.mmsVersion = paramRetrieveConf.getMmsVersion();
    this.priority = paramRetrieveConf.getPriority();
    this.readReport = paramRetrieveConf.getReadReport();
    this.retrieveStatus = paramRetrieveConf.getRetrieveStatus();
    EncodedStringValue localEncodedStringValue3 = paramRetrieveConf.getRetrieveText();
    if (localEncodedStringValue3 != null)
    {
      this.retrieveText = localEncodedStringValue3.getString();
      this.retrieveTextCharset = localEncodedStringValue3.getCharacterSet();
    }
    this.deliveryReport = paramRetrieveConf.getDeliveryReport();
    EncodedStringValue[] arrayOfEncodedStringValue = paramRetrieveConf.getCc();
    if (arrayOfEncodedStringValue != null)
      this.ccAddresses = new ExtraAddress[arrayOfEncodedStringValue.length];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfEncodedStringValue.length)
        return;
      EncodedStringValue localEncodedStringValue4 = arrayOfEncodedStringValue[i];
      this.ccAddresses[i] = new ExtraAddress(localEncodedStringValue4.getString(), localEncodedStringValue4.getCharacterSet());
    }
  }

  MmsContentConfigHeader(SendReq paramSendReq)
  {
    EncodedStringValue localEncodedStringValue1 = paramSendReq.getSubject();
    if (localEncodedStringValue1 != null)
    {
      this.subject = localEncodedStringValue1.getString();
      this.subjectCharset = localEncodedStringValue1.getCharacterSet();
    }
    this.messageclass = paramSendReq.getMessageClass();
    this.messageType = paramSendReq.getMessageType();
    this.transactionId = paramSendReq.getTransactionId();
    this.contentType = paramSendReq.getContentType();
    this.mmsVersion = paramSendReq.getMmsVersion();
    this.priority = paramSendReq.getPriority();
    this.readReport = paramSendReq.getReadReport();
    this.deliveryReport = paramSendReq.getDeliveryReport();
    EncodedStringValue[] arrayOfEncodedStringValue1 = paramSendReq.getTo();
    this.expiry = paramSendReq.getExpiry();
    this.messageSize = paramSendReq.getMessageSize();
    int k;
    EncodedStringValue[] arrayOfEncodedStringValue2;
    int j;
    label167: EncodedStringValue[] arrayOfEncodedStringValue3;
    if (arrayOfEncodedStringValue1 != null)
    {
      this.toAddresses = new ExtraAddress[arrayOfEncodedStringValue1.length];
      k = 0;
      if (k < arrayOfEncodedStringValue1.length);
    }
    else
    {
      arrayOfEncodedStringValue2 = paramSendReq.getCc();
      if (arrayOfEncodedStringValue2 != null)
      {
        this.ccAddresses = new ExtraAddress[arrayOfEncodedStringValue2.length];
        j = 0;
        if (j < arrayOfEncodedStringValue2.length)
          break label241;
      }
      arrayOfEncodedStringValue3 = paramSendReq.getBcc();
      if (arrayOfEncodedStringValue3 != null)
        this.bccAddresses = new ExtraAddress[arrayOfEncodedStringValue3.length];
    }
    while (true)
    {
      if (i >= arrayOfEncodedStringValue3.length)
      {
        return;
        EncodedStringValue localEncodedStringValue4 = arrayOfEncodedStringValue1[k];
        this.toAddresses[k] = new ExtraAddress(localEncodedStringValue4.getString(), localEncodedStringValue4.getCharacterSet());
        k++;
        break;
        label241: EncodedStringValue localEncodedStringValue3 = arrayOfEncodedStringValue2[j];
        this.ccAddresses[j] = new ExtraAddress(localEncodedStringValue3.getString(), localEncodedStringValue3.getCharacterSet());
        j++;
        break label167;
      }
      EncodedStringValue localEncodedStringValue2 = arrayOfEncodedStringValue3[i];
      this.bccAddresses[i] = new ExtraAddress(localEncodedStringValue2.getString(), localEncodedStringValue2.getCharacterSet());
      i++;
    }
  }

  private GenericPdu a(long paramLong)
  {
    SendReq localSendReq = new SendReq();
    localSendReq.setDate(paramLong / 1000L);
    if (this.subject != null)
    {
      EncodedStringValue localEncodedStringValue1 = new EncodedStringValue(this.subject);
      localEncodedStringValue1.setCharacterSet(this.subjectCharset);
      localSendReq.setSubject(localEncodedStringValue1);
    }
    localSendReq.setExpiry(this.expiry);
    if (this.messageclass != null)
      localSendReq.setMessageClass(this.messageclass);
    localSendReq.setMessageSize(this.messageSize);
    try
    {
      localSendReq.setMessageType(this.messageType);
    }
    catch (InvalidHeaderValueException localInvalidHeaderValueException4)
    {
      try
      {
        localSendReq.setMmsVersion(this.mmsVersion);
        if (this.transactionId != null)
          localSendReq.setTransactionId(this.transactionId);
      }
      catch (InvalidHeaderValueException localInvalidHeaderValueException4)
      {
        try
        {
          localSendReq.setDeliveryReport(this.deliveryReport);
          localSendReq.setContentType(this.contentType);
        }
        catch (InvalidHeaderValueException localInvalidHeaderValueException4)
        {
          try
          {
            localSendReq.setPriority(this.priority);
          }
          catch (InvalidHeaderValueException localInvalidHeaderValueException4)
          {
            try
            {
              while (true)
              {
                localSendReq.setReadReport(this.readReport);
                if (this.toAddresses != null)
                {
                  k = 0;
                  if (k < this.toAddresses.length)
                    break;
                }
                if (this.ccAddresses != null)
                {
                  j = 0;
                  if (j < this.ccAddresses.length)
                    break label315;
                }
                ExtraAddress[] arrayOfExtraAddress = this.bccAddresses;
                i = 0;
                if ((arrayOfExtraAddress != null) && (i < this.bccAddresses.length))
                  break label368;
                return localSendReq;
                localInvalidHeaderValueException1 = localInvalidHeaderValueException1;
                localInvalidHeaderValueException1.printStackTrace();
                continue;
                localInvalidHeaderValueException2 = localInvalidHeaderValueException2;
                localInvalidHeaderValueException2.printStackTrace();
                continue;
                localInvalidHeaderValueException3 = localInvalidHeaderValueException3;
                localInvalidHeaderValueException3.printStackTrace();
                continue;
                localInvalidHeaderValueException4 = localInvalidHeaderValueException4;
                localInvalidHeaderValueException4.printStackTrace();
              }
            }
            catch (InvalidHeaderValueException localInvalidHeaderValueException5)
            {
              while (true)
              {
                int k;
                int j;
                int i;
                localInvalidHeaderValueException5.printStackTrace();
                continue;
                ExtraAddress localExtraAddress3 = this.toAddresses[k];
                if (localExtraAddress3.phonenumber != null)
                {
                  EncodedStringValue localEncodedStringValue4 = new EncodedStringValue(localExtraAddress3.phonenumber);
                  localEncodedStringValue4.setCharacterSet(localExtraAddress3.characterSet);
                  localSendReq.addTo(localEncodedStringValue4);
                }
                k++;
                continue;
                label315: ExtraAddress localExtraAddress2 = this.ccAddresses[j];
                if (localExtraAddress2.phonenumber != null)
                {
                  EncodedStringValue localEncodedStringValue3 = new EncodedStringValue(localExtraAddress2.phonenumber);
                  localEncodedStringValue3.setCharacterSet(localExtraAddress2.characterSet);
                  localSendReq.addCc(localEncodedStringValue3);
                }
                j++;
                continue;
                label368: ExtraAddress localExtraAddress1 = this.bccAddresses[i];
                if (localExtraAddress1.phonenumber != null)
                {
                  EncodedStringValue localEncodedStringValue2 = new EncodedStringValue(localExtraAddress1.phonenumber);
                  localEncodedStringValue2.setCharacterSet(localExtraAddress1.characterSet);
                  localSendReq.addBcc(localEncodedStringValue2);
                }
                i++;
              }
            }
          }
        }
      }
    }
  }

  private GenericPdu b(String paramString, long paramLong)
  {
    while (true)
    {
      RetrieveConf localRetrieveConf1;
      RetrieveConf localRetrieveConf2;
      try
      {
        localRetrieveConf1 = new RetrieveConf();
        if (localRetrieveConf1 == null)
        {
          localRetrieveConf2 = localRetrieveConf1;
          return localRetrieveConf2;
        }
      }
      catch (InvalidHeaderValueException localInvalidHeaderValueException8)
      {
        localInvalidHeaderValueException8.printStackTrace();
        localRetrieveConf1 = null;
        continue;
        if (paramString != null)
        {
          EncodedStringValue localEncodedStringValue1 = new EncodedStringValue(paramString);
          localEncodedStringValue1.setCharacterSet(this.phonenumCharset);
          localRetrieveConf1.setFrom(localEncodedStringValue1);
        }
        localRetrieveConf1.setDate(paramLong / 1000L);
        if (this.subject != null)
        {
          EncodedStringValue localEncodedStringValue2 = new EncodedStringValue(this.subject);
          localEncodedStringValue2.setCharacterSet(this.subjectCharset);
          localRetrieveConf1.setSubject(localEncodedStringValue2);
        }
        if (this.messageclass != null)
          localRetrieveConf1.setMessageClass(this.messageclass);
      }
      try
      {
        localRetrieveConf1.setMessageType(this.messageType);
        if (this.transactionId != null)
          localRetrieveConf1.setTransactionId(this.transactionId);
        if (this.messageId != null)
          localRetrieveConf1.setMessageId(this.messageId);
        if (this.contentType == null);
      }
      catch (InvalidHeaderValueException localInvalidHeaderValueException5)
      {
        try
        {
          localRetrieveConf1.setContentType(this.contentType);
        }
        catch (InvalidHeaderValueException localInvalidHeaderValueException5)
        {
          try
          {
            localRetrieveConf1.setMmsVersion(this.mmsVersion);
          }
          catch (InvalidHeaderValueException localInvalidHeaderValueException5)
          {
            try
            {
              localRetrieveConf1.setPriority(this.priority);
            }
            catch (InvalidHeaderValueException localInvalidHeaderValueException5)
            {
              try
              {
                localRetrieveConf1.setReadReport(this.readReport);
              }
              catch (InvalidHeaderValueException localInvalidHeaderValueException5)
              {
                try
                {
                  localRetrieveConf1.setRetrieveStatus(this.retrieveStatus);
                  if (this.responseText != null)
                  {
                    EncodedStringValue localEncodedStringValue3 = new EncodedStringValue(this.retrieveText);
                    localEncodedStringValue3.setCharacterSet(this.retrieveTextCharset);
                    localRetrieveConf1.setRetrieveText(localEncodedStringValue3);
                  }
                }
                catch (InvalidHeaderValueException localInvalidHeaderValueException5)
                {
                  try
                  {
                    while (true)
                    {
                      localRetrieveConf1.setDeliveryReport(this.deliveryReport);
                      if (this.ccAddresses != null)
                      {
                        i = 0;
                        if (i < this.ccAddresses.length)
                          break label361;
                      }
                      localRetrieveConf2 = localRetrieveConf1;
                      break;
                      localInvalidHeaderValueException1 = localInvalidHeaderValueException1;
                      localInvalidHeaderValueException1.printStackTrace();
                      continue;
                      localInvalidHeaderValueException7 = localInvalidHeaderValueException7;
                      localInvalidHeaderValueException7.printStackTrace();
                      continue;
                      localInvalidHeaderValueException2 = localInvalidHeaderValueException2;
                      localInvalidHeaderValueException2.printStackTrace();
                      continue;
                      localInvalidHeaderValueException3 = localInvalidHeaderValueException3;
                      localInvalidHeaderValueException3.printStackTrace();
                      continue;
                      localInvalidHeaderValueException4 = localInvalidHeaderValueException4;
                      localInvalidHeaderValueException4.printStackTrace();
                    }
                    localInvalidHeaderValueException5 = localInvalidHeaderValueException5;
                    localInvalidHeaderValueException5.printStackTrace();
                  }
                  catch (InvalidHeaderValueException localInvalidHeaderValueException6)
                  {
                    while (true)
                    {
                      int i;
                      localInvalidHeaderValueException6.printStackTrace();
                      continue;
                      label361: ExtraAddress localExtraAddress = this.ccAddresses[i];
                      if (localExtraAddress.phonenumber != null)
                      {
                        EncodedStringValue localEncodedStringValue4 = new EncodedStringValue(localExtraAddress.phonenumber);
                        localEncodedStringValue4.setCharacterSet(localExtraAddress.characterSet);
                        localRetrieveConf1.addCc(localEncodedStringValue4);
                      }
                      i++;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  final GenericPdu a(String paramString, long paramLong)
  {
    int i = this.messageType;
    GenericPdu localGenericPdu = null;
    switch (i)
    {
    default:
    case 132:
    case 128:
    }
    while (true)
    {
      return localGenericPdu;
      localGenericPdu = b(paramString, paramLong);
      continue;
      localGenericPdu = a(paramLong);
    }
  }

  final String a()
  {
    if ((this.toAddresses != null) && (this.toAddresses.length > 0));
    for (String str = this.toAddresses[0].phonenumber; ; str = "")
      return str;
  }

  public static class ExtraAddress
  {
    public int characterSet;
    public String phonenumber;

    public ExtraAddress(String paramString, int paramInt)
    {
      this.phonenumber = paramString;
      this.characterSet = paramInt;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader
 * JD-Core Version:    0.6.2
 */