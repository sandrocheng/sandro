package com.tencent.tmsecure.module.aresengine;

import android.net.Uri;
import java.util.List;

public abstract class AbsSysDao
{
  public abstract boolean contains(String paramString);

  public abstract List<CallLogEntity> getAllCallLog();

  public abstract List<ContactEntity> getAllContact();

  public abstract CallLogEntity getLastCallLog();

  public abstract SmsEntity getLastInBoxMms(int paramInt1, int paramInt2);

  public abstract SmsEntity getLastInBoxSms(int paramInt1, int paramInt2);

  public abstract SmsEntity getLastOutBoxMms(int paramInt);

  public abstract SmsEntity getLastOutBoxSms(int paramInt);

  public abstract SmsEntity getLastSentMms(int paramInt);

  public abstract SmsEntity getLastSentSms(int paramInt);

  public abstract SmsEntity getMms(int paramInt1, int paramInt2);

  public abstract List<ContactEntity> getSimContact();

  public abstract Uri insert(SmsEntity paramSmsEntity);

  public abstract boolean remove(CallLogEntity paramCallLogEntity);

  public abstract boolean remove(SmsEntity paramSmsEntity);

  public abstract boolean supportThisPhone();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.AbsSysDao
 * JD-Core Version:    0.6.2
 */