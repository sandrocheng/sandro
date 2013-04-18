package com.keniu.security.f;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

public final class s
{
  private static final String b = ".tmp";
  private static final long c = 172800000L;
  private static s d;
  private String a;

  public static s a()
  {
    try
    {
      if (d == null)
        d = new s();
      s locals = d;
      return locals;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static String a(File paramFile)
  {
    String str1;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      byte[] arrayOfByte = new byte[4096];
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte, 0, 4096);
        if (i <= 0)
          break;
        localMessageDigest.update(arrayOfByte, 0, i);
      }
      String str2 = k.a(localMessageDigest.digest());
      str1 = str2;
    }
    catch (Exception localException)
    {
      str1 = null;
    }
    return str1;
  }

  public static String b(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      String str2 = k.a(localMessageDigest.digest());
      str1 = str2;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = null;
    }
  }

  public final void a(String paramString)
  {
    this.a = f.a(paramString);
    new File(this.a).mkdirs();
    while (true)
    {
      int j;
      try
      {
        long l = System.currentTimeMillis() - 172800000L;
        File[] arrayOfFile = new File(this.a).listFiles();
        int i = arrayOfFile.length;
        j = 0;
        if (j < i)
        {
          File localFile = arrayOfFile[j];
          if (localFile.getName().endsWith(".tmp"))
            localFile.delete();
          else if (localFile.lastModified() < l)
            localFile.delete();
        }
      }
      catch (Exception localException)
      {
      }
      return;
      j++;
    }
  }

  public final boolean a(String paramString1, int paramInt, String paramString2)
  {
    File localFile = new File(this.a + paramString1);
    boolean bool1 = localFile.exists();
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = localFile.length() < paramInt;
      bool2 = false;
      if (!bool3)
      {
        boolean bool4 = k.a(paramString2);
        bool2 = false;
        if (!bool4)
        {
          String str = a(localFile);
          boolean bool5 = k.a(str);
          bool2 = false;
          if (!bool5)
            bool2 = str.equalsIgnoreCase(paramString2);
        }
      }
    }
    if ((!bool2) && (localFile.exists()))
      localFile.delete();
    return bool2;
  }

  public final String c(String paramString)
  {
    return this.a + paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.s
 * JD-Core Version:    0.6.2
 */