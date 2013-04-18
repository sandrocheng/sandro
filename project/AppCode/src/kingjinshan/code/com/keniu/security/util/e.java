package com.keniu.security.util;

import java.io.IOException;
import java.security.AccessControlException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class e
{
  public static int a = 1;
  public static int b = 2;
  public static int c = 3;
  private static String[] d = { "AndroidManifest.xml", "classes.dex", "META-INF" };

  private static int a(String paramString)
  {
    int i;
    try
    {
      Enumeration localEnumeration = new ZipFile(paramString).entries();
      int j = 0;
      while (localEnumeration.hasMoreElements())
      {
        String str = ((ZipEntry)localEnumeration.nextElement()).getName();
        if (g.a(d, str))
          j++;
      }
      if (j == d.length)
        i = a;
      else
        i = b;
    }
    catch (AccessControlException localAccessControlException)
    {
      i = c;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      i = b;
    }
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.e
 * JD-Core Version:    0.6.2
 */