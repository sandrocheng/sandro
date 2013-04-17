package com.tencent.feedback.eup;

import com.tencent.feedback.common.c;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

public final class m
{
  private static boolean a(String[] paramArrayOfString, a parama)
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
        c.b(localThrowable.getMessage());
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
    c.a("LogcatManager.getLogDatas() start + count:" + paramInt);
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
    a locala = new a(paramInt);
    a(arrayOfString, locala);
    byte[] arrayOfByte;
    if (locala.size() <= 0)
      arrayOfByte = null;
    while (true)
    {
      return arrayOfByte;
      c.a("get log success in list size:" + locala.size());
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
        c.b("change to byte[] failed");
        c.a("LogcatManager.getLogDatas() end");
        arrayOfByte = null;
        continue;
        locala.clear();
        arrayOfByte = localStringBuffer.toString().getBytes("utf-8");
        localStringBuffer.setLength(0);
        c.a("LogcatManager.getLogDatas() end");
      }
      finally
      {
        c.a("LogcatManager.getLogDatas() end");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.m
 * JD-Core Version:    0.6.2
 */