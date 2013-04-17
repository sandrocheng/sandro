package com.tencent.feedback.c;

import android.content.Context;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.f.d;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.AbstractUploadDatas.UploadDataType;
import common.RequestPackage;
import eventrecord.EventRecord;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class h extends AbstractUploadDatas
{
  private Context a = null;
  private f b = null;
  private RequestPackage c = null;
  private boolean d = true;
  private List e = null;

  public h(Context paramContext, f paramf)
  {
    super(AbstractUploadDatas.UploadDataType.RQD_RealTimeRecords);
    this.a = paramContext;
    this.b = paramf;
  }

  // ERROR //
  public static RequestPackage a(Context paramContext, List paramList)
  {
    // Byte code:
    //   0: ldc 40
    //   2: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   5: aconst_null
    //   6: astore_2
    //   7: aload_1
    //   8: ifnull +16 -> 24
    //   11: aload_1
    //   12: invokeinterface 52 1 0
    //   17: istore_3
    //   18: aconst_null
    //   19: astore_2
    //   20: iload_3
    //   21: ifgt +5 -> 26
    //   24: aload_2
    //   25: areturn
    //   26: new 54	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   33: ldc 59
    //   35: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_1
    //   39: invokeinterface 52 1 0
    //   44: invokevirtual 66	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   47: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   53: aload_1
    //   54: invokestatic 73	com/tencent/feedback/c/h:b	(Ljava/util/List;)Leventrecord/a;
    //   57: astore 6
    //   59: aload 6
    //   61: ifnonnull +13 -> 74
    //   64: ldc 75
    //   66: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   69: aconst_null
    //   70: astore_2
    //   71: goto -47 -> 24
    //   74: aload 6
    //   76: invokevirtual 81	eventrecord/a:toByteArray	()[B
    //   79: astore 7
    //   81: aload 7
    //   83: ifnonnull +13 -> 96
    //   86: ldc 75
    //   88: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   91: aconst_null
    //   92: astore_2
    //   93: goto -69 -> 24
    //   96: aload_0
    //   97: invokestatic 86	com/tencent/feedback/common/strategy/a:a	(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;
    //   100: aload_0
    //   101: invokevirtual 89	com/tencent/feedback/common/strategy/a:b	(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;
    //   104: astore 8
    //   106: aload 8
    //   108: monitorenter
    //   109: aload 8
    //   111: invokevirtual 94	com/tencent/feedback/common/strategy/SecurityStrategyBean:getZipAlgorithm	()I
    //   114: i2b
    //   115: istore 10
    //   117: aload 8
    //   119: invokevirtual 97	com/tencent/feedback/common/strategy/SecurityStrategyBean:getEncryAlgorithm	()I
    //   122: i2b
    //   123: istore 11
    //   125: aload 8
    //   127: invokevirtual 100	com/tencent/feedback/common/strategy/SecurityStrategyBean:getEncryKey	()Ljava/lang/String;
    //   130: astore 12
    //   132: aload 8
    //   134: monitorexit
    //   135: aload 7
    //   137: iload 10
    //   139: iload 11
    //   141: aload 12
    //   143: invokestatic 105	com/tencent/feedback/common/g:a	([BIILjava/lang/String;)[B
    //   146: astore 13
    //   148: aload 13
    //   150: ifnonnull +48 -> 198
    //   153: ldc 107
    //   155: invokestatic 110	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   158: ldc 75
    //   160: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   163: aconst_null
    //   164: astore_2
    //   165: goto -141 -> 24
    //   168: astore 9
    //   170: aload 8
    //   172: monitorexit
    //   173: aload 9
    //   175: athrow
    //   176: astore 5
    //   178: aload 5
    //   180: invokevirtual 113	java/lang/Throwable:printStackTrace	()V
    //   183: ldc 115
    //   185: invokestatic 110	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   188: ldc 75
    //   190: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   193: aconst_null
    //   194: astore_2
    //   195: goto -171 -> 24
    //   198: bipush 11
    //   200: invokestatic 121	com/tencent/feedback/common/CommonInfo:getCommonInfo	()Lcom/tencent/feedback/common/CommonInfo;
    //   203: aload 13
    //   205: iload 10
    //   207: iload 11
    //   209: invokestatic 124	com/tencent/feedback/common/g:a	(ILcom/tencent/feedback/common/CommonInfo;[BII)Lcommon/RequestPackage;
    //   212: astore 14
    //   214: aload 14
    //   216: astore_2
    //   217: ldc 75
    //   219: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   222: goto -198 -> 24
    //   225: astore 4
    //   227: ldc 75
    //   229: invokestatic 46	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   232: aload 4
    //   234: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   109	135	168	finally
    //   26	59	176	java/lang/Throwable
    //   74	81	176	java/lang/Throwable
    //   96	109	176	java/lang/Throwable
    //   135	158	176	java/lang/Throwable
    //   170	176	176	java/lang/Throwable
    //   198	214	176	java/lang/Throwable
    //   26	59	225	finally
    //   74	81	225	finally
    //   96	109	225	finally
    //   135	158	225	finally
    //   170	176	225	finally
    //   178	188	225	finally
    //   198	214	225	finally
  }

  private void a(RequestPackage paramRequestPackage)
  {
    try
    {
      this.c = paramRequestPackage;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(List paramList)
  {
    try
    {
      this.e = paramList;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private RequestPackage b()
  {
    try
    {
      RequestPackage localRequestPackage = this.c;
      return localRequestPackage;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static eventrecord.a b(List paramList)
  {
    ELog.debug("RealTimeRecordUploadDatas.encode2EventRecordPackage() start");
    Object localObject;
    if ((paramList == null) || (paramList.size() <= 0))
      localObject = null;
    while (true)
    {
      return localObject;
      eventrecord.a locala;
      ArrayList localArrayList;
      try
      {
        locala = new eventrecord.a();
        localArrayList = new ArrayList();
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          EventRecord localEventRecord = f.d.c((i)localIterator.next());
          if (localEventRecord != null)
            localArrayList.add(localEventRecord);
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        localObject = null;
      }
      continue;
      locala.a(localArrayList);
      ELog.debug("RealTimeRecordUploadDatas.encode2EventRecordPackage() end");
      localObject = locala;
    }
  }

  private List c()
  {
    try
    {
      List localList = this.e;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.d = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean a()
  {
    try
    {
      boolean bool = this.d;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void done(boolean paramBoolean)
  {
    ELog.debug("RealTimeRecordUploadDatas.done() start");
    a(null);
    List localList = c();
    a(null);
    if (localList != null)
    {
      if (!paramBoolean)
      {
        ELog.debug("isHandled false , record to db");
        a.a(this.a, localList);
      }
      localList.clear();
    }
    ELog.debug("RealTimeRecordUploadDatas.done() end");
  }

  public final RequestPackage getUploadRequestPackage(boolean paramBoolean)
  {
    ELog.debug("RealTimeRecordUploadDatas.getUploadDatas() start");
    RequestPackage localRequestPackage;
    if ((this.b == null) || (!a()))
      localRequestPackage = null;
    while (true)
    {
      return localRequestPackage;
      localRequestPackage = b();
      if (localRequestPackage != null)
        continue;
      try
      {
        List localList = this.b.a();
        a(localList);
        if (localList != null)
        {
          int i = localList.size();
          if (i > 0);
        }
        else
        {
          ELog.debug("RealTimeRecordUploadDatas.getUploadDatas() end");
          localRequestPackage = null;
          continue;
        }
        localRequestPackage = a(this.a, localList);
        a(localRequestPackage);
        ELog.debug("RealTimeRecordUploadDatas.getUploadDatas() end");
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("getUploadDatas error");
        ELog.debug("RealTimeRecordUploadDatas.getUploadDatas() end");
        localRequestPackage = null;
      }
      finally
      {
        ELog.debug("RealTimeRecordUploadDatas.getUploadDatas() end");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.c.h
 * JD-Core Version:    0.6.2
 */