package com.tencent.feedback.c;

import android.content.Context;
import com.tencent.feedback.a.c;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.f;
import com.tencent.feedback.common.f.d;
import com.tencent.feedback.common.g;
import com.tencent.feedback.common.strategy.SecurityStrategyBean;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.AbstractUploadDatas.UploadDataType;
import common.MixPackage;
import common.RequestPackage;
import eventrecord.EventRecord;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import speedmonitor.IpMonitor;

public class d extends AbstractUploadDatas
{
  private Context a = null;
  private long b = f.b().b;
  private long c = f.b().c;
  private RequestPackage d = null;
  private Long[] e = null;
  private int f = 4;
  private boolean g = true;

  public d(Context paramContext)
  {
    super(AbstractUploadDatas.UploadDataType.RQD_COMRecords);
    this.a = paramContext;
  }

  private static MixPackage a(List paramList)
  {
    int i = 1;
    ELog.debug("CommonRecordUploadDatas.encode2MixPackage() start");
    MixPackage localMixPackage;
    if ((paramList == null) || (paramList.size() <= 0))
      localMixPackage = null;
    while (true)
    {
      return localMixPackage;
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = new ArrayList();
      int j = 0;
      i locali;
      try
      {
        if (j >= paramList.size())
          break label209;
        locali = (i)paramList.get(j);
        if (locali.e() == null)
          break label452;
        if ("IP".equals(locali.b()))
        {
          IpMonitor localIpMonitor = f.d.a(locali);
          if (localIpMonitor != null)
            localArrayList1.add(localIpMonitor);
        }
        else if ("PG".equals(locali.b()))
        {
          speedmonitor.a locala1 = f.d.b(locali);
          if (locala1 == null)
            break label452;
          localArrayList2.add(locala1);
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("CommonRecordUploadDatas.encode2MixPackage() error");
        localMixPackage = null;
      }
      continue;
      label209: speedmonitor.b localb1;
      int k;
      label331: eventrecord.a locala;
      if ("UA".equals(locali.b()))
      {
        EventRecord localEventRecord = f.d.c(locali);
        if (localEventRecord != null)
        {
          localArrayList3.add(localEventRecord);
          break label452;
          ELog.debug("up dmList " + localArrayList2.size());
          ELog.debug("up ipList " + localArrayList1.size());
          ELog.debug("up erList " + localArrayList3.size());
          localb1 = new speedmonitor.b();
          if (localArrayList2.size() > 0)
          {
            localb1.b(localArrayList2);
            i = 0;
          }
          if (localArrayList1.size() > 0)
          {
            localb1.a(localArrayList1);
            k = 0;
            break label458;
            if (localArrayList3.size() > 0)
            {
              locala = new eventrecord.a();
              locala.a(localArrayList3);
            }
          }
        }
      }
      speedmonitor.b localb2;
      label452: label458: 
      while ((localb2 != null) || (locala != null))
      {
        HashMap localHashMap = new HashMap();
        if (localb2 != null)
          localHashMap.put(Integer.valueOf(2), localb2.toByteArray());
        if (locala != null)
          localHashMap.put(Integer.valueOf(1), locala.toByteArray());
        localMixPackage = new MixPackage();
        localMixPackage.a(localHashMap);
        ELog.debug("CommonRecordUploadDatas.encode2MixPackage() end");
        break;
        locala = null;
        continue;
        do
        {
          localb2 = localb1;
          break label331;
          k = i;
          continue;
          j++;
          break;
        }
        while (k == 0);
        localb2 = null;
        break label331;
      }
      localMixPackage = null;
    }
  }

  public final long a()
  {
    try
    {
      long l = this.c;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(long paramLong)
  {
    try
    {
      if (paramLong > this.b)
        paramLong = this.b;
      this.c = paramLong;
      return;
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
      this.g = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean b()
  {
    try
    {
      boolean bool = this.g;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void done(boolean paramBoolean)
  {
    while (true)
    {
      Context localContext;
      Long[] arrayOfLong;
      try
      {
        ELog.debug("CommonRecordUploadDatas.done() start");
        if (paramBoolean)
        {
          if (this.e != null)
          {
            int i = this.e.length;
            if (i > 0);
          }
          else
          {
            return;
          }
          localContext = this.a;
          arrayOfLong = this.e;
          ELog.info("RecordDAO.deleteRecordList() start");
          if (localContext == null)
          {
            ELog.error("deleteRecordList() have null args!");
            k = -1;
            ELog.debug("remove num :" + k);
            this.d = null;
            this.e = null;
          }
        }
        else
        {
          ELog.debug("CommonRecordUploadDatas.done() end");
          continue;
        }
      }
      finally
      {
      }
      ELog.info("RecordDAO.deleteRecordList() end");
      int j = com.tencent.feedback.common.a.b.a(localContext, arrayOfLong);
      int k = j;
    }
  }

  public RequestPackage getUploadRequestPackage(boolean paramBoolean)
  {
    while (true)
    {
      RequestPackage localRequestPackage;
      List localList1;
      Long[] arrayOfLong;
      int m;
      int n;
      byte[] arrayOfByte2;
      try
      {
        ELog.debug("CommonRecordUploadDatas.getUploadDatas() start");
        if (this.a != null)
        {
          boolean bool = b();
          if (bool);
        }
        else
        {
          localRequestPackage = null;
          return localRequestPackage;
        }
        if (this.d != null)
        {
          localRequestPackage = this.d;
          continue;
        }
        ELog.debug("should query for upload datas!");
        try
        {
          c localc = c.a(this.a);
          if (localc == null)
            break label735;
          localList1 = localc.a(13);
          localArrayList = new ArrayList();
          i = 0;
          if (localList1 != null)
          {
            Iterator localIterator = localList1.iterator();
            i1 = 0;
            if ((localIterator.hasNext()) && (400L + i1 <= this.c))
            {
              com.tencent.feedback.a.a locala = (com.tencent.feedback.a.a)localIterator.next();
              i locali = f.d.a(locala);
              if (locali != null)
              {
                localArrayList.add(locali);
                i1 = (int)(400L + i1);
              }
              locala.a(0);
              long[] arrayOfLong1 = locala.f();
              if (arrayOfLong1 != null)
              {
                int i2 = 0;
                if (i2 < arrayOfLong1.length)
                {
                  arrayOfLong1[i2] = 0L;
                  i2++;
                  continue;
                }
              }
              long l2 = new Date().getTime();
              locala.b(l2);
              locala.c(l2);
              continue;
            }
          }
        }
        catch (Throwable localThrowable)
        {
          ArrayList localArrayList;
          int i1;
          localThrowable.printStackTrace();
          if (paramBoolean)
          {
            ELog.info("finally call done(true)");
            done(true);
          }
          ELog.debug("CommonRecordUploadDatas.getUploadDatas() end");
          localRequestPackage = null;
          continue;
          localList1.clear();
          int i = i1;
          long l1 = this.c - i;
          if (l1 >= 0L)
          {
            List localList2 = a.a(this.a, null, l1);
            if (localList2 != null)
              localArrayList.addAll(localList2);
          }
          int j = localArrayList.size();
          if (j <= 0)
          {
            if (paramBoolean)
            {
              ELog.info("finally call done(true)");
              done(true);
            }
            ELog.debug("CommonRecordUploadDatas.getUploadDatas() end");
            localRequestPackage = null;
            continue;
          }
          ELog.debug("current size:" + localArrayList.size());
          MixPackage localMixPackage = a(localArrayList);
          if (localMixPackage == null)
            break label711;
          arrayOfLong = new Long[localArrayList.size()];
          int k = 0;
          if (k < arrayOfLong.length)
          {
            arrayOfLong[k] = Long.valueOf(((i)localArrayList.get(k)).a());
            k++;
            continue;
          }
          localArrayList.clear();
          arrayOfByte1 = localMixPackage.toByteArray();
          if (arrayOfByte1 == null)
          {
            if (paramBoolean)
            {
              ELog.info("finally call done(true)");
              done(true);
            }
            ELog.debug("CommonRecordUploadDatas.getUploadDatas() end");
            localRequestPackage = null;
            continue;
          }
        }
        finally
        {
          synchronized (com.tencent.feedback.common.strategy.a.a(this.a).b(this.a))
          {
            byte[] arrayOfByte1;
            m = (byte)???.getZipAlgorithm();
            n = (byte)???.getEncryAlgorithm();
            String str = ???.getEncryKey();
            arrayOfByte2 = g.a(arrayOfByte1, m, n, str);
            if (arrayOfByte2 != null)
              break label645;
            ELog.error("encodeDatasByZipAndEncry failed!");
            if (paramBoolean)
            {
              ELog.info("finally call done(true)");
              done(true);
            }
            ELog.debug("CommonRecordUploadDatas.getUploadDatas() end");
            localRequestPackage = null;
          }
          if (paramBoolean)
          {
            ELog.info("finally call done(true)");
            done(true);
          }
          ELog.debug("CommonRecordUploadDatas.getUploadDatas() end");
        }
      }
      finally
      {
      }
      label645: CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
      this.d = g.a(this.f, localCommonInfo, arrayOfByte2, m, n);
      if (this.d != null)
      {
        this.e = arrayOfLong;
        localRequestPackage = this.d;
        if (paramBoolean)
        {
          ELog.info("finally call done(true)");
          done(true);
        }
        ELog.debug("CommonRecordUploadDatas.getUploadDatas() end");
      }
      else
      {
        label711: if (paramBoolean)
        {
          ELog.info("finally call done(true)");
          done(true);
        }
        ELog.debug("CommonRecordUploadDatas.getUploadDatas() end");
        continue;
        label735: localList1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.c.d
 * JD-Core Version:    0.6.2
 */