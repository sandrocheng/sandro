package com.avast.android.mobilesecurity.app.firewall.core;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.support.v4.a.f;
import android.util.Log;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.ac;
import com.avast.android.mobilesecurity.t;
import java.io.BufferedReader;
import java.io.StringReader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class h extends f
{
  private Map t;

  public h(Context paramContext, Map paramMap)
  {
    super(paramContext);
    this.t = paramMap;
  }

  private HashMap a(String paramString)
  {
    BufferedReader localBufferedReader = new BufferedReader(new StringReader(paramString));
    Integer localInteger1 = Integer.valueOf(-99);
    HashMap localHashMap = new HashMap();
    label347: 
    while (true)
    {
      String str1 = localBufferedReader.readLine();
      int i;
      int i2;
      if (str1 != null)
      {
        if (str1.indexOf("[AVASTWALL]") != -1)
        {
          i = str1.indexOf("UID=");
          if (i != -1)
          {
            i2 = str1.indexOf(" ", i);
            if (i2 == -1);
          }
        }
      }
      else
        for (Integer localInteger2 = Integer.valueOf(Integer.parseInt(str1.substring(i + 4, i2))); ; localInteger2 = localInteger1)
        {
          while (true)
          {
            if (localInteger2.intValue() == 0)
              break label347;
            j localj = (j)localHashMap.get(localInteger2);
            if (localj == null)
            {
              localj = new j(localInteger2, null);
              localHashMap.put(localInteger2, localj);
            }
            long l = 0L;
            int j = str1.indexOf("LEN=");
            String str3;
            if (j != -1)
            {
              int n = str1.indexOf(" ", j);
              if (n != -1)
                str3 = str1.substring(j + 4, n);
            }
            try
            {
              int i1 = Integer.parseInt(str3);
              l = i1;
              j.a(localj, l);
              int k = str1.indexOf("DST=");
              if (k == -1)
                break;
              int m = str1.indexOf(" ", k);
              if (m == -1)
                break;
              str2 = str1.substring(k + 4, m);
              if (j.c(localj).containsKey(str2))
                j.c(localj).put(str2, Long.valueOf(l + ((Long)j.c(localj).get(str2)).longValue()));
            }
            catch (Exception localException)
            {
              String str2;
              while (true)
                l = 1L;
              j.c(localj).put(str2, Long.valueOf(l));
            }
          }
          break;
          return localHashMap;
        }
    }
  }

  private List a(HashMap paramHashMap)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.addAll(paramHashMap.values());
    Collections.sort(localLinkedList, new i(this));
    return localLinkedList;
  }

  public Cursor f()
  {
    t localt = (t)ad.a(j(), t.class);
    Context localContext = j();
    MatrixCursor localMatrixCursor1 = new MatrixCursor(new String[] { "_id", "name", "total_blocked", "last_targets" });
    MatrixCursor localMatrixCursor2;
    try
    {
      if (!localt.Y())
      {
        localMatrixCursor2 = localMatrixCursor1;
      }
      else
      {
        boolean bool1 = b.a(localContext);
        boolean bool2 = localt.Z();
        StringBuilder localStringBuilder1 = new StringBuilder();
        if (b.a(localContext, b.a(localContext, bool1, bool2) + "dmesg | $GREP AVASTWALL\n", localStringBuilder1) != 0)
        {
          localMatrixCursor2 = localMatrixCursor1;
        }
        else
        {
          List localList = a(a(localStringBuilder1.toString()));
          if (localList.size() > 0)
          {
            String str1 = localContext.getString(2131493643);
            ac localac = new ac(localContext);
            Iterator localIterator1 = localList.iterator();
            while (localIterator1.hasNext())
            {
              j localj = (j)localIterator1.next();
              Integer localInteger = j.a(localj);
              if ((localInteger != null) && (localInteger.intValue() != 0))
              {
                str2 = (String)this.t.get(localInteger);
                if (str2 != null)
                  break label416;
                str3 = str1;
                long l = j.b(localj);
                StringBuilder localStringBuilder2 = new StringBuilder();
                Iterator localIterator2 = j.c(localj).keySet().iterator();
                for (int i = 1; localIterator2.hasNext(); i = 0)
                {
                  String str4 = (String)localIterator2.next();
                  if (i == 0)
                    localStringBuilder2.append(",\n");
                  localStringBuilder2.append(str4).append(" (").append(localac.a(((Long)j.c(localj).get(str4)).longValue())).append(")");
                }
                localMatrixCursor1.newRow().add(localInteger).add(str3).add(Long.valueOf(l)).add(localStringBuilder2.toString());
              }
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str2;
        Log.e("AvastMobileSecurity", "Error on reading firewall log", localException);
        localMatrixCursor2 = localMatrixCursor1;
        break;
        label416: String str3 = str2;
      }
    }
    return localMatrixCursor2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.core.h
 * JD-Core Version:    0.6.2
 */