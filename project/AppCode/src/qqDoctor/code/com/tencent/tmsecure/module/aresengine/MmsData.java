package com.tencent.tmsecure.module.aresengine;

import android.os.Parcel;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.MultimediaMessagePdu;
import com.google.android.mms.pdu.NotificationInd;
import com.google.android.mms.pdu.PduBody;
import com.google.android.mms.pdu.RetrieveConf;
import com.google.android.mms.pdu.SendReq;
import com.tencent.tmsecure.common.BaseEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MmsData extends BaseEntity
{
  public MmsContentConfigHeader mmsContentConfigHeader;
  public MmsNotificationIndHeader mmsNotificationIndHeader;
  public List<MmsPart> mmsParts;

  public MmsData()
  {
  }

  public MmsData(Parcel paramParcel)
  {
    if (paramParcel.readByte() == 1)
      this.mmsNotificationIndHeader = new MmsNotificationIndHeader(paramParcel);
  }

  private void a(PduBody paramPduBody)
  {
    int i;
    if (paramPduBody != null)
    {
      i = paramPduBody.getPartsNum();
      this.mmsParts = new ArrayList(i);
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      this.mmsParts.add(new MmsPart(paramPduBody.getPart(j)));
    }
  }

  final GenericPdu a(String paramString, long paramLong)
  {
    GenericPdu localGenericPdu;
    if (this.mmsContentConfigHeader == null)
    {
      MmsNotificationIndHeader localMmsNotificationIndHeader = this.mmsNotificationIndHeader;
      localGenericPdu = null;
      if (localMmsNotificationIndHeader != null)
        localGenericPdu = this.mmsNotificationIndHeader.a(paramString);
    }
    do
    {
      return localGenericPdu;
      MmsContentConfigHeader localMmsContentConfigHeader = this.mmsContentConfigHeader;
      localGenericPdu = null;
      if (localMmsContentConfigHeader != null)
        localGenericPdu = this.mmsContentConfigHeader.a(paramString, paramLong);
    }
    while ((localGenericPdu == null) || (this.mmsParts == null));
    PduBody localPduBody = new PduBody();
    Iterator localIterator = this.mmsParts.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        ((MultimediaMessagePdu)localGenericPdu).setBody(localPduBody);
        break;
      }
      localPduBody.addPart(((MmsPart)localIterator.next()).a());
    }
  }

  public final void a(NotificationInd paramNotificationInd)
  {
    this.mmsNotificationIndHeader = new MmsNotificationIndHeader(paramNotificationInd);
  }

  public final void a(RetrieveConf paramRetrieveConf)
  {
    this.mmsContentConfigHeader = new MmsContentConfigHeader(paramRetrieveConf);
    a(paramRetrieveConf.getBody());
  }

  final void a(SendReq paramSendReq)
  {
    this.mmsContentConfigHeader = new MmsContentConfigHeader(paramSendReq);
    a(paramSendReq.getBody());
  }

  final byte[] a()
  {
    MmsNotificationIndHeader localMmsNotificationIndHeader = this.mmsNotificationIndHeader;
    byte[] arrayOfByte = null;
    if (localMmsNotificationIndHeader != null)
      arrayOfByte = this.mmsNotificationIndHeader.contentLocation;
    return arrayOfByte;
  }

  final byte[] b()
  {
    MmsNotificationIndHeader localMmsNotificationIndHeader = this.mmsNotificationIndHeader;
    byte[] arrayOfByte = null;
    if (localMmsNotificationIndHeader != null)
      arrayOfByte = this.mmsNotificationIndHeader.transactionId;
    if ((arrayOfByte == null) && (this.mmsContentConfigHeader != null))
      arrayOfByte = this.mmsContentConfigHeader.transactionId;
    return arrayOfByte;
  }

  public void writeToParcel(Parcel paramParcel)
  {
    if (this.mmsNotificationIndHeader != null)
    {
      paramParcel.writeByte((byte)1);
      this.mmsNotificationIndHeader.a(paramParcel);
    }
    while (true)
    {
      return;
      paramParcel.writeByte((byte)0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.MmsData
 * JD-Core Version:    0.6.2
 */