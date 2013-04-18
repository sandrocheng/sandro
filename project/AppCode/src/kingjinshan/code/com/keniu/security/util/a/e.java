package com.keniu.security.util.a;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.PrintWriter;

public final class e
{
  public static String a(String paramString)
  {
    Object localObject;
    try
    {
      localStringBuffer = new StringBuffer();
      localBufferedReader = new BufferedReader(new FileReader(paramString));
      if (!new File(paramString).exists())
        localObject = null;
      else
        while (localBufferedReader.ready())
          localStringBuffer.append(localBufferedReader.readLine() + "\r\n");
    }
    catch (Exception localException)
    {
      StringBuffer localStringBuffer;
      BufferedReader localBufferedReader;
      localException.printStackTrace();
      localObject = null;
      break label106;
      localBufferedReader.close();
      String str = localStringBuffer.toString();
      localObject = str;
    }
    label106: return localObject;
  }

  public static void a(String paramString1, String paramString2)
  {
    try
    {
      new File(paramString1).createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(paramString1);
      PrintWriter localPrintWriter = new PrintWriter(new File(paramString1));
      localPrintWriter.write(paramString2);
      localFileOutputStream.close();
      localPrintWriter.close();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.a.e
 * JD-Core Version:    0.6.2
 */