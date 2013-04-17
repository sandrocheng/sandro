package com.tencent.feedback.common;

import android.content.Context;
import com.tencent.feedback.c.i;
import com.tencent.feedback.eup.k;
import eventrecord.EventRecord;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import speedmonitor.IpMonitor;

public final class f
{
  private static a a = new a(10, 10, 3, 10);
  private static a b = new a(50, 60000L, 30000L, 12, 30000L, 2097152L);
  private static d c = new d(12, 60000L);
  private static c d = new c(21600000L);

  static
  {
    new b(60000L, 7);
    new b(28800000L, 60000L, 1, 60000L, 1);
  }

  public static a a()
  {
    synchronized (a)
    {
      a locala2 = a;
      return locala2;
    }
  }

  public static a b()
  {
    synchronized (b)
    {
      a locala2 = b;
      return locala2;
    }
  }

  public static d c()
  {
    synchronized (c)
    {
      d locald2 = c;
      return locald2;
    }
  }

  public static c d()
  {
    synchronized (d)
    {
      c localc2 = d;
      return localc2;
    }
  }

  public static class a
  {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public a()
    {
    }

    public a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.a = 10;
      this.b = 10;
      this.c = 3;
      this.d = 10;
    }

    public static int a(Context paramContext)
    {
      ELog.debug("EUPDAO.querySum() start");
      if (paramContext == null)
        ELog.warn("querySum() context is null arg");
      for (int i = -1; ; i = com.tencent.feedback.common.a.b.b(paramContext, new int[] { 2, 1 }, -1L, 9223372036854775807L))
        return i;
    }

    public static int a(Context paramContext, long paramLong1, long paramLong2)
    {
      ELog.debug("EUPDAO.deleteEup() start");
      if (paramContext == null)
        ELog.warn("deleteEup() context is null arg");
      for (int i = -1; ; i = com.tencent.feedback.common.a.b.a(paramContext, new int[] { 1, 2 }, -1L, paramLong2))
        return i;
    }

    public static List a(Context paramContext, int paramInt1, String paramString1, int paramInt2, String paramString2, int paramInt3, int paramInt4, long paramLong1, long paramLong2)
    {
      ELog.debug("EUPDAO.queryEupRecent() start");
      Object localObject1;
      if ((paramContext == null) || (paramInt1 == 0) || ((paramLong2 > 0L) && (paramLong1 > paramLong2)) || ((paramInt4 > 0) && (paramInt3 > paramInt4)))
      {
        ELog.warn("context == null || limitNum == 0 || (timeEnd > 0 && timeStart > timeEnd) || (maxCount > 0 && miniCount > maxCount ,pls check");
        localObject1 = null;
      }
      while (true)
      {
        return localObject1;
        int i;
        label63: int[] arrayOfInt;
        if ("asc".equals(paramString1))
        {
          i = 1;
          if (paramInt2 != 2)
            break label129;
          arrayOfInt = new int[] { 2 };
        }
        List localList;
        while (true)
        {
          localList = com.tencent.feedback.common.a.b.a(paramContext, arrayOfInt, -1, i, -1L, paramInt1, paramString2, paramInt3, paramInt4, paramLong1, paramLong2);
          if ((localList != null) && (localList.size() > 0))
            break label177;
          localObject1 = null;
          break;
          i = 2;
          break label63;
          label129: if (paramInt2 == 1)
          {
            arrayOfInt = new int[] { 1 };
          }
          else if (paramInt2 < 0)
          {
            arrayOfInt = new int[] { 1, 2 };
          }
          else
          {
            ELog.warn("queryEupRecent() seletedRecordType unaccepted");
            arrayOfInt = null;
          }
        }
        label177: ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          com.tencent.feedback.common.a.a locala = (com.tencent.feedback.common.a.a)localIterator.next();
          try
          {
            Object localObject2 = g.a(locala.e());
            if ((localObject2 != null) && (k.class.isInstance(localObject2)))
            {
              k localk = (k)k.class.cast(localObject2);
              localk.d(locala.a());
              localArrayList.add(localk);
              localIterator.remove();
            }
          }
          catch (Throwable localThrowable)
          {
            localThrowable.printStackTrace();
            ELog.error("query have error!");
          }
        }
        if (localList.size() > 0)
        {
          ELog.debug("there are error datas ,should be remove " + localList.size());
          Long[] arrayOfLong = new Long[localList.size()];
          for (int j = 0; j < localList.size(); j++)
            arrayOfLong[j] = Long.valueOf(((com.tencent.feedback.common.a.a)localList.get(j)).a());
          com.tencent.feedback.common.a.b.a(paramContext, arrayOfLong);
        }
        ELog.debug("EUPDAO.queryEupRecent() end");
        localObject1 = localArrayList;
      }
    }

    public static boolean a(Context paramContext, k paramk)
    {
      int i = 2;
      ELog.debug("EUPDAO.insertEUP() start");
      boolean bool;
      if ((paramContext == null) || (paramk == null))
      {
        ELog.warn("EUPDAO.insertEUP() have null args");
        bool = false;
      }
      while (true)
      {
        return bool;
        try
        {
          if (paramk.l() == i);
          while (true)
          {
            com.tencent.feedback.common.a.a locala = new com.tencent.feedback.common.a.a(i, 0, paramk.d(), g.a(paramk));
            locala.b(paramk.r());
            locala.c(paramk.s());
            locala.a(paramk.q());
            if (!com.tencent.feedback.common.a.b.a(paramContext, locala))
              break label114;
            paramk.d(locala.a());
            ELog.debug("EUPDAO.insertEUP() end");
            bool = true;
            break;
            i = 1;
          }
          label114: ELog.debug("EUPDAO.insertEUP() end");
          bool = false;
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
          ELog.error("insert fail!");
          ELog.debug("EUPDAO.insertEUP() end");
          bool = false;
        }
        finally
        {
          ELog.debug("EUPDAO.insertEUP() end");
        }
      }
    }

    public static boolean a(Context paramContext, List paramList)
    {
      ELog.debug("EUPDAO.insertOrUpdateEupList() start");
      boolean bool1;
      if ((paramContext == null) || (paramList == null) || (paramList.size() <= 0))
      {
        ELog.warn("context == null ||| list == null || list.size() <= 0,pls check");
        bool1 = false;
      }
      while (true)
      {
        return bool1;
        try
        {
          localArrayList = new ArrayList();
          Iterator localIterator = paramList.iterator();
          while (true)
          {
            if (!localIterator.hasNext())
              break label185;
            k localk = (k)localIterator.next();
            if (localk.l() != 2)
              break;
            i = 2;
            com.tencent.feedback.common.a.a locala = new com.tencent.feedback.common.a.a(i, 0, localk.d(), g.a(localk));
            locala.b(localk.r());
            locala.c(localk.s());
            locala.a(localk.q());
            locala.a(localk.m());
            localArrayList.add(locala);
          }
        }
        catch (Throwable localThrowable)
        {
          ArrayList localArrayList;
          while (true)
          {
            localThrowable.printStackTrace();
            ELog.error("insert fail!");
            ELog.debug("EUPDAO.insertOrUpdateEupList() end");
            bool1 = false;
            break;
            int i = 1;
          }
          label185: boolean bool2 = com.tencent.feedback.common.a.b.b(paramContext, localArrayList);
          bool1 = bool2;
          ELog.debug("EUPDAO.insertOrUpdateEupList() end");
        }
        finally
        {
          ELog.debug("EUPDAO.insertOrUpdateEupList() end");
        }
      }
    }
  }

  public static class b
  {
    public b()
    {
    }

    public b(long paramLong1, long paramLong2, int paramInt1, long paramLong3, int paramInt2)
    {
    }

    public static boolean a(String[] paramArrayOfString, com.tencent.feedback.eup.a parama)
    {
      boolean bool = false;
      if (paramArrayOfString != null)
      {
        int i = paramArrayOfString.length;
        bool = false;
        if (i > 0)
          break label17;
      }
      while (true)
      {
        return bool;
        label17: Process localProcess;
        BufferedReader localBufferedReader;
        try
        {
          localProcess = Runtime.getRuntime().exec(paramArrayOfString);
          if (parama == null)
            break label96;
          localBufferedReader = new BufferedReader(new InputStreamReader(localProcess.getInputStream()));
          while (true)
          {
            String str = localBufferedReader.readLine();
            if (str == null)
              break;
            parama.add(str);
          }
        }
        catch (Throwable localThrowable)
        {
          ELog.error(localThrowable.getMessage());
          bool = false;
        }
        continue;
        localBufferedReader.close();
        break label102;
        label96: localProcess.waitFor();
        label102: bool = true;
      }
    }

    public static byte[] a(String paramString, int paramInt)
    {
      ELog.info("LogcatManager.getLogDatas() start + count:" + paramInt);
      if ((paramInt <= 0) || (paramInt > 300))
        paramInt = 50;
      ArrayList localArrayList = new ArrayList();
      localArrayList.clear();
      localArrayList.add("logcat");
      localArrayList.add("-d");
      localArrayList.add("-v");
      localArrayList.add("time");
      if ((paramString != null) && (paramString.length() > 0))
      {
        localArrayList.add("-s");
        localArrayList.add(paramString);
      }
      String[] arrayOfString = new String[localArrayList.size()];
      localArrayList.toArray(arrayOfString);
      com.tencent.feedback.eup.a locala = new com.tencent.feedback.eup.a(paramInt);
      a(arrayOfString, locala);
      byte[] arrayOfByte;
      if (locala.size() <= 0)
        arrayOfByte = null;
      while (true)
      {
        return arrayOfByte;
        ELog.info("get log success in list size:" + locala.size());
        try
        {
          localStringBuffer = new StringBuffer();
          Iterator localIterator = locala.iterator();
          while (localIterator.hasNext())
            localStringBuffer.append((String)localIterator.next() + "\n");
        }
        catch (Throwable localThrowable)
        {
          StringBuffer localStringBuffer;
          localThrowable.printStackTrace();
          ELog.error("change to byte[] failed");
          ELog.info("LogcatManager.getLogDatas() end");
          arrayOfByte = null;
          continue;
          locala.clear();
          arrayOfByte = localStringBuffer.toString().getBytes("utf-8");
          localStringBuffer.setLength(0);
          ELog.info("LogcatManager.getLogDatas() end");
        }
        finally
        {
          ELog.info("LogcatManager.getLogDatas() end");
        }
      }
    }
  }

  public static class c
  {
    public final long a;

    public c()
    {
    }

    public c(long paramLong)
    {
      this.a = 21600000L;
    }

    public static int a(Context paramContext, long paramLong1, long paramLong2)
    {
      ELog.info("MonitorDAO.deleteSpeedMonitorSources() start");
      if (paramContext == null)
        ELog.info("MonitorDAO.deleteSpeedMonitorSources() context is null arg");
      for (int i = -1; ; i = com.tencent.feedback.common.a.b.a(paramContext, new int[] { 6 }, -1L, paramLong2))
        return i;
    }

    public static List a(Context paramContext, int paramInt)
    {
      ELog.info("MonitorDAO.queryMonitorTesSource() start");
      Object localObject1;
      if (paramContext == null)
      {
        ELog.error("queryMonitorTesSource() have null args!");
        localObject1 = null;
      }
      while (true)
      {
        return localObject1;
        List localList = com.tencent.feedback.common.a.b.a(paramContext, new int[] { 6 }, -1, 2, -1L, 100, null, -1, -1, -1L, -1L);
        if ((localList == null) || (localList.size() <= 0))
        {
          localObject1 = null;
        }
        else
        {
          ArrayList localArrayList = new ArrayList();
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            com.tencent.feedback.common.a.a locala = (com.tencent.feedback.common.a.a)localIterator.next();
            try
            {
              Object localObject2 = g.a(locala.e());
              if ((localObject2 != null) && (com.tencent.feedback.b.b.class.isInstance(localObject2)))
              {
                com.tencent.feedback.b.b localb = (com.tencent.feedback.b.b)com.tencent.feedback.b.b.class.cast(localObject2);
                localb.a(locala.a());
                localArrayList.add(localb);
                localIterator.remove();
              }
            }
            catch (Throwable localThrowable)
            {
              localThrowable.printStackTrace();
              ELog.error("query have error!");
            }
          }
          if (localList.size() > 0)
          {
            ELog.info("there are error datas ,should be remove " + localList.size());
            Long[] arrayOfLong = new Long[localList.size()];
            for (int i = 0; i < localList.size(); i++)
              arrayOfLong[i] = Long.valueOf(((com.tencent.feedback.common.a.a)localList.get(i)).a());
            com.tencent.feedback.common.a.b.a(paramContext, arrayOfLong);
          }
          ELog.info("MonitorDAO.queryMonitorTesSource() end");
          localObject1 = localArrayList;
        }
      }
    }

    public static boolean a(Context paramContext, com.tencent.feedback.b.b paramb)
    {
      ELog.info("MonitorDAO.insert() start");
      boolean bool1;
      if ((paramContext == null) || (paramb == null))
      {
        ELog.info("MonitorDAO.insert() have null args");
        bool1 = false;
      }
      while (true)
      {
        return bool1;
        try
        {
          boolean bool2 = com.tencent.feedback.common.a.b.a(paramContext, new com.tencent.feedback.common.a.a(6, 9, paramb.b(), g.a(paramb)));
          bool1 = bool2;
          ELog.info("MonitorDAO.insert() end");
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
          ELog.error("insert fail!");
          ELog.info("MonitorDAO.insert() end");
          bool1 = false;
        }
        finally
        {
          ELog.info("MonitorDAO.insert() end");
        }
      }
    }
  }

  public static class d
  {
    public final int a;
    public final long b;

    public d()
    {
    }

    public d(int paramInt, long paramLong)
    {
      this.a = 12;
      this.b = 60000L;
    }

    public static i a(com.tencent.feedback.a.a parama)
    {
      if ((parama == null) || (parama.a().trim().length() <= 0));
      i locali;
      HashMap localHashMap;
      long[] arrayOfLong1;
      for (Object localObject = null; ; localObject = null)
      {
        return localObject;
        locali = new i();
        locali.a(-1L);
        locali.b(parama.a());
        locali.a("UA");
        locali.b(parama.d());
        localHashMap = new HashMap();
        localHashMap.put("rdmuid", "unknown");
        localHashMap.put("apn", "unknown");
        localHashMap.put("srcip", "unknown");
        localHashMap.put("isok", "true");
        localHashMap.put("timescounted", "" + parama.e());
        localHashMap.put("starttime", "" + parama.c());
        if ((!"rqd_upload_nowifi_consumed".equals(locali.d())) && (!"rqd_upload_wifi_consumed".equals(locali.d())))
          break label341;
        arrayOfLong1 = parama.f();
        if (arrayOfLong1.length == 3)
          break;
        ELog.error("the values in RQD Count Consumed is not format length:" + arrayOfLong1.length);
      }
      localHashMap.put("elapse", "" + arrayOfLong1[0]);
      localHashMap.put("upconsumed", "" + arrayOfLong1[1]);
      localHashMap.put("size", "" + arrayOfLong1[2]);
      while (true)
      {
        locali.a(localHashMap);
        localObject = locali;
        break;
        label341: localHashMap.put("elapse", "0");
        localHashMap.put("size", "0");
        long[] arrayOfLong2 = parama.f();
        int i = 0;
        if (arrayOfLong2 != null)
          while (i < arrayOfLong2.length)
          {
            localHashMap.put("p" + i, "" + arrayOfLong2[i]);
            i++;
          }
      }
    }

    public static IpMonitor a(i parami)
    {
      Object localObject;
      if ((parami == null) || (!"IP".equals(parami.b())))
        localObject = null;
      while (true)
      {
        return localObject;
        Map localMap = parami.e();
        if (localMap == null)
          localObject = null;
        else
          try
          {
            IpMonitor localIpMonitor = new IpMonitor();
            localIpMonitor.a((String)localMap.get("apn"));
            localIpMonitor.a(Long.parseLong((String)localMap.get("elapse")));
            String[] arrayOfString = parami.d().split(":");
            localIpMonitor.c(arrayOfString[0]);
            localIpMonitor.a(Integer.parseInt(arrayOfString[1]));
            localIpMonitor.b((String)localMap.get("srcip"));
            localIpMonitor.b(parami.c());
            localObject = localIpMonitor;
          }
          catch (Throwable localThrowable)
          {
            localThrowable.printStackTrace();
            ELog.error(localThrowable.getMessage());
            localObject = null;
          }
      }
    }

    public static speedmonitor.a b(i parami)
    {
      Object localObject;
      if ((parami == null) || (!"PG".equals(parami.b())))
        localObject = null;
      while (true)
      {
        return localObject;
        Map localMap = parami.e();
        if (localMap == null)
          localObject = null;
        else
          try
          {
            speedmonitor.a locala = new speedmonitor.a();
            locala.a((String)localMap.get("apn"));
            locala.c(parami.d());
            locala.e((String)localMap.get("dnsserver"));
            locala.a(Long.parseLong((String)localMap.get("dnstime")));
            locala.c(Long.parseLong((String)localMap.get("requestsendtime")));
            locala.d(Long.parseLong((String)localMap.get("netwaittime")));
            locala.e(Long.parseLong((String)localMap.get("responserecvreadtime")));
            locala.b((String)localMap.get("srcip"));
            locala.d((String)localMap.get("targetip"));
            locala.b(Long.parseLong((String)localMap.get("tcptime")));
            locala.f(parami.c());
            localObject = locala;
          }
          catch (Throwable localThrowable)
          {
            localThrowable.printStackTrace();
            ELog.error(localThrowable.getMessage());
            localObject = null;
          }
      }
    }

    public static EventRecord c(i parami)
    {
      Object localObject;
      if ((parami == null) || (!"UA".equals(parami.b())))
        localObject = null;
      while (true)
      {
        return localObject;
        Map localMap = parami.e();
        if (localMap == null)
          localObject = null;
        else
          try
          {
            EventRecord localEventRecord = new EventRecord();
            localEventRecord.a((String)localMap.get("apn"));
            localEventRecord.c(parami.d());
            localEventRecord.c(parami.c());
            localEventRecord.b((String)localMap.get("srcip"));
            localEventRecord.b(Long.parseLong((String)localMap.get("elapse")));
            localEventRecord.a(Boolean.parseBoolean((String)localMap.get("isok")));
            localEventRecord.a(Long.parseLong((String)localMap.get("size")));
            localMap.remove("apn");
            localMap.remove("srcip");
            localEventRecord.d(g.a(localMap));
            ELog.debug("new event record:" + localEventRecord.toString());
            localObject = localEventRecord;
          }
          catch (Throwable localThrowable)
          {
            localThrowable.printStackTrace();
            ELog.error(localThrowable.getMessage());
            localObject = null;
          }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.f
 * JD-Core Version:    0.6.2
 */