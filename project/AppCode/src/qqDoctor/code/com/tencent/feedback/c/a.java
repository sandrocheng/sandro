package com.tencent.feedback.c;

import android.content.Context;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.d;
import com.tencent.feedback.common.f;
import com.tencent.feedback.common.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
  implements e
{
  private Context a;
  private boolean b;
  private int c;
  private long d;
  private int e;
  private List f;
  private Runnable g;
  private Runnable h;

  public a()
  {
  }

  public a(Context paramContext)
  {
    this.b = true;
    this.g = new b(this);
    this.h = new c(this);
    this.a = paramContext;
    this.c = f.b().d;
    this.d = f.b().e;
    this.e = f.b().a;
    this.f = new ArrayList(this.c << 1);
    com.tencent.feedback.common.c.a().a(12, this.g, this.d, this.d);
  }

  public static int a(Context paramContext, String[] paramArrayOfString, long paramLong1, long paramLong2)
  {
    ELog.info("RecordDAO.deleteRecords() start");
    return com.tencent.feedback.common.a.b.a(paramContext, new int[] { 3, 4, 5 }, -1L, paramLong2);
  }

  public static List a(Context paramContext, String[] paramArrayOfString, long paramLong)
  {
    ELog.info("RecordDAO.queryRecentRecord() start");
    Object localObject1;
    if (paramContext == null)
    {
      ELog.error("queryRecentRecord() have null args!");
      localObject1 = null;
    }
    while (true)
    {
      return localObject1;
      List localList = com.tencent.feedback.common.a.b.a(paramContext, new int[] { 3, 4, 5 }, 1, 2, paramLong, -1, null, -1, -1, -1L, -1L);
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
            if ((localObject2 != null) && (i.class.isInstance(localObject2)))
            {
              i locali = (i)i.class.cast(localObject2);
              locali.a(locala.a());
              localArrayList.add(locali);
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
        ELog.info("RecordDAO.queryRecentRecord() end");
        localObject1 = localArrayList;
      }
    }
  }

  public static boolean a(Context paramContext, i parami)
  {
    int i = 3;
    ELog.info("RecordDAO.insert() start");
    boolean bool1;
    if ((paramContext == null) || (parami == null) || (parami.b() == null))
    {
      ELog.error("insert() have null args!");
      bool1 = false;
    }
    while (true)
    {
      return bool1;
      int j;
      if (parami.b().equals("UA"))
        j = i;
      try
      {
        while (true)
        {
          com.tencent.feedback.common.a.a locala = new com.tencent.feedback.common.a.a(j, i, parami.c(), g.a(parami));
          boolean bool2 = com.tencent.feedback.common.a.b.a(paramContext, locala);
          if (bool2)
            parami.a(locala.a());
          ELog.info("RecordDAO.insert() end");
          bool1 = bool2;
          break;
          if (parami.b().equals("IP"))
          {
            j = 4;
            i = 0;
          }
          else
          {
            if (!parami.b().equals("PG"))
              break label139;
            j = 5;
            i = 0;
          }
        }
        label139: ELog.error("bean's type is error!");
        bool1 = false;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("insert error!");
        ELog.info("RecordDAO.insert() end");
        bool1 = false;
      }
      finally
      {
        ELog.info("RecordDAO.insert() end");
      }
    }
  }

  public static boolean a(Context paramContext, List paramList)
  {
    boolean bool = false;
    ELog.info("RecordDAO.insertList() start");
    if ((paramContext == null) || (paramList == null))
      ELog.error("insertList() have null args!");
    while (true)
    {
      return bool;
      if (paramList.size() <= 0)
      {
        ELog.debug("list siez == 0 , return true!");
        bool = true;
      }
      else
      {
        ArrayList localArrayList = new ArrayList();
        int i = 0;
        while (true)
          if (i < paramList.size())
          {
            i locali = (i)paramList.get(i);
            int k;
            int j;
            if (locali.b().equals("UA"))
            {
              k = 3;
              j = 3;
            }
            try
            {
              label95: localArrayList.add(new com.tencent.feedback.common.a.a(j, k, locali.c(), g.a(locali)));
              while (true)
              {
                i++;
                break;
                if (locali.b().equals("IP"))
                {
                  j = 4;
                  k = 0;
                  break label95;
                }
                if (locali.b().equals("PG"))
                {
                  j = 5;
                  k = 0;
                  break label95;
                }
                ELog.error("bean's type is error!");
              }
            }
            catch (Throwable localThrowable)
            {
              while (true)
                localThrowable.printStackTrace();
            }
          }
        bool = com.tencent.feedback.common.a.b.a(paramContext, localArrayList);
      }
    }
  }

  private List c()
  {
    try
    {
      ELog.debug("commonprocess.getCommonList() start");
      Object localObject2;
      if ((this.f != null) && (this.f.size() > 0))
      {
        boolean bool = d();
        if (bool);
      }
      else
      {
        localObject2 = null;
      }
      while (true)
      {
        return localObject2;
        localObject2 = new ArrayList();
        ((List)localObject2).addAll(this.f);
        this.f.clear();
        ELog.debug("return list's item num:" + ((List)localObject2).size());
        ELog.debug("commonprocess.getCommonList() end");
      }
    }
    finally
    {
    }
  }

  private boolean d()
  {
    try
    {
      boolean bool = this.b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected final void a()
  {
    if (!d())
    {
      ELog.warn("real time process has disable");
      return;
    }
    ELog.debug("common process doSyncDB start");
    List localList = c();
    long l1;
    if ((localList != null) && (localList.size() > 0))
    {
      ELog.debug("insertList");
      boolean bool = a(this.a, localList);
      ELog.debug("result:" + bool);
      if (bool)
      {
        ELog.debug("queryUploadStrategy() start");
        l1 = this.e;
        if (!d.a(this.a))
          break label236;
        ELog.debug("current is wifi ,so half maxSize " + l1);
      }
    }
    label158: label230: label236: for (long l2 = l1 / 2L; ; l2 = l1)
    {
      Context localContext = this.a;
      ELog.info("RecordDAO.countRecordNum() start");
      int i;
      if (localContext == null)
      {
        ELog.error("countRecordNum() have null args!");
        i = -1;
        if (i < l2)
          break label230;
      }
      for (int j = 1; ; j = 0)
      {
        if (j != 0)
        {
          ELog.info("start max upload!");
          this.h.run();
        }
        ELog.debug("common process doSyncDB end");
        break;
        i = com.tencent.feedback.common.a.b.b(localContext, new int[] { 3, 4, 5 }, -1L, 9223372036854775807L);
        break label158;
      }
    }
  }

  public final void a(i parami)
  {
    while (true)
    {
      try
      {
        ELog.debug("CommonProcess.processUA() start");
        if ((this.a == null) || (parami == null) || (!this.b))
        {
          ELog.error("context == null || bean == null return");
          return;
        }
        if (!d())
        {
          ELog.error("enable false! return");
          continue;
        }
      }
      finally
      {
      }
      int i = this.f.size();
      if (i >= this.c)
      {
        ELog.error("buffer over max num drop it!");
      }
      else
      {
        ELog.debug("add to buffer");
        this.f.add(parami);
        if (i + 1 >= this.c)
        {
          ELog.debug("buffer reach max num should sync to db");
          com.tencent.feedback.common.c.a().a(this.g);
          com.tencent.feedback.common.c.a().a(12, this.g, this.d, this.d);
        }
        ELog.debug("CommonProcess.processUA() end");
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.b = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b()
  {
    try
    {
      ELog.info("common process close start");
      this.b = false;
      com.tencent.feedback.common.c.a().a(12, true);
      a();
      ELog.info("common process close end");
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
 * Qualified Name:     com.tencent.feedback.c.a
 * JD-Core Version:    0.6.2
 */