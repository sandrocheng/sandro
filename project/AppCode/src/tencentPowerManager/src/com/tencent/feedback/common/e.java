package com.tencent.feedback.common;

import android.content.Context;
import com.tencent.feedback.common.a.a;
import com.tencent.feedback.common.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class e
{
  public e()
  {
  }

  public e(int paramInt, long paramLong)
  {
  }

  public static int a(Context paramContext, long paramLong1, long paramLong2)
  {
    c.a("EUPDAO.deleteEup() start");
    if (paramContext == null)
      c.a("deleteEup() context is null arg");
    for (int i = -1; ; i = b.a(paramContext, new int[] { 1, 2 }, -1L, paramLong2))
      return i;
  }

  public static List a(Context paramContext, int paramInt1, String paramString, int paramInt2)
  {
    Object localObject1 = null;
    c.a("EUPDAO.queryEupRecent() start");
    if (paramContext == null)
      c.b("queryEupRecent() context can't be null");
    while (true)
    {
      return localObject1;
      int i;
      label32: int[] arrayOfInt;
      if ("asc".equals(paramString))
      {
        i = 1;
        if (paramInt2 != 2)
          break label209;
        arrayOfInt = new int[] { 2 };
      }
      List localList;
      ArrayList localArrayList;
      while (true)
      {
        localList = b.a(paramContext, arrayOfInt, -1, i, paramInt1);
        localObject1 = null;
        if (localList == null)
          break;
        int j = localList.size();
        localObject1 = null;
        if (j <= 0)
          break;
        localArrayList = new ArrayList();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          try
          {
            Object localObject2 = f.a(locala.e());
            if ((localObject2 != null) && (com.tencent.feedback.common.a.e.class.isInstance(localObject2)))
            {
              com.tencent.feedback.common.a.e locale = (com.tencent.feedback.common.a.e)com.tencent.feedback.common.a.e.class.cast(localObject2);
              locale.d(locala.a());
              localArrayList.add(locale);
              localIterator.remove();
            }
          }
          catch (Throwable localThrowable)
          {
            localThrowable.printStackTrace();
            c.b("query have error!");
          }
        }
        i = 2;
        break label32;
        label209: if (paramInt2 == 1)
        {
          arrayOfInt = new int[] { 1 };
        }
        else if (paramInt2 < 0)
        {
          arrayOfInt = new int[] { 1, 2 };
        }
        else
        {
          c.b("queryEupRecent() seletedRecordType unaccepted");
          arrayOfInt = null;
        }
      }
      if (localList.size() > 0)
      {
        c.a("there are error datas ,should be remove " + localList.size());
        Long[] arrayOfLong = new Long[localList.size()];
        for (int k = 0; k < localList.size(); k++)
          arrayOfLong[k] = Long.valueOf(((a)localList.get(k)).a());
        b.a(paramContext, arrayOfLong);
      }
      c.a("EUPDAO.queryEupRecent() end");
      localObject1 = localArrayList;
    }
  }

  public static boolean a(Context paramContext, com.tencent.feedback.common.a.e parame)
  {
    int i = 2;
    c.a("EUPDAO.insertEUP() start");
    boolean bool1;
    if ((paramContext == null) || (parame == null))
    {
      c.a("EUPDAO.insertEUP() have null args");
      bool1 = false;
    }
    while (true)
    {
      return bool1;
      try
      {
        label32: a locala;
        if (parame.l() == i)
        {
          locala = new a(i, 0, parame.d(), f.a(parame));
          if ((paramContext != null) && (locala != null))
            break label97;
          c.a("AnalyticsDAO.insert() have null args");
        }
        label97: boolean bool2;
        for (int j = 0; ; j = bool2)
        {
          if (j == 0)
            break label129;
          parame.d(locala.a());
          c.a("EUPDAO.insertEUP() end");
          bool1 = true;
          break;
          i = 1;
          break label32;
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(locala);
          bool2 = b.a(paramContext, localArrayList);
        }
        label129: c.a("EUPDAO.insertEUP() end");
        bool1 = false;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        c.b("insert fail!");
        c.a("EUPDAO.insertEUP() end");
        bool1 = false;
      }
      finally
      {
        c.a("EUPDAO.insertEUP() end");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.e
 * JD-Core Version:    0.6.2
 */