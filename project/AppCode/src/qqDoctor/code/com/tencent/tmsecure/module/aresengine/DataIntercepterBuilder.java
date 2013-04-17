package com.tencent.tmsecure.module.aresengine;

import bua;
import buj;
import buo;
import bvk;
import bvp;

public abstract class DataIntercepterBuilder<T extends TelephonyEntity>
{
  public static final String TYPE_INCOMING_CALL = "incoming_call";
  public static final String TYPE_INCOMING_SMS = "incoming_sms";
  public static final String TYPE_OUTGOING_SMS = "outing_sms";
  public static final String TYPE_SYSTEM_CALL = "system_call";
  private DataMonitor<T> a;
  private DataFilter<T> b;
  private DataHandler c;

  public static final DataIntercepterBuilder<CallLogEntity> createInComingCallIntercepterBuilder()
  {
    return new buj();
  }

  public static final DataIntercepterBuilder<SmsEntity> createInComingSmsIntercepterBuilder()
  {
    return new buo();
  }

  public static final DataIntercepterBuilder<SmsEntity> createOutgoingSmsIntercepterBuilder()
  {
    return new bvk();
  }

  public static final DataIntercepterBuilder<CallLogEntity> createSystemCallLogIntercepterBuilder()
  {
    return new bvp();
  }

  public final DataIntercepter<T> a()
  {
    while (true)
    {
      try
      {
        if (this.a == null)
        {
          localDataMonitor = getDataMonitor();
          this.a = localDataMonitor;
          if (this.b != null)
            break label97;
          localDataFilter = getDataFilter();
          this.b = localDataFilter;
          if (this.c != null)
            break label105;
          localDataHandler = getDataHandler();
          this.c = localDataHandler;
          if ((this.a != null) && (this.b != null) && (this.c != null))
            break;
          throw new NullPointerException();
        }
      }
      finally
      {
      }
      DataMonitor localDataMonitor = this.a;
      continue;
      label97: DataFilter localDataFilter = this.b;
      continue;
      label105: DataHandler localDataHandler = this.c;
    }
    this.a.bind(this.b);
    this.b.a(this.c);
    bua localbua = new bua(this.a, this.b, this.c);
    this.b = null;
    this.a = null;
    this.c = null;
    return localbua;
  }

  public abstract DataFilter<T> getDataFilter();

  public abstract DataHandler getDataHandler();

  public abstract DataMonitor<T> getDataMonitor();

  public abstract String getName();

  public void setDataHandler(DataHandler paramDataHandler)
  {
    try
    {
      this.c = paramDataHandler;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setDataMonitor(DataMonitor<T> paramDataMonitor)
  {
    try
    {
      this.a = paramDataMonitor;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
 * JD-Core Version:    0.6.2
 */