package com.avast.android.mobilesecurity.app.manager.a;

import android.os.Environment;
import android.os.StatFs;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class n
  implements l
{
  private static final Pattern a = Pattern.compile("MemTotal:\\s+(\\d+) kB");
  private static final Pattern b = Pattern.compile("MemFree:\\s*(\\d+) kB");
  private static final Pattern c = Pattern.compile("Cached:\\s*(\\d+) kB");

  public m c()
  {
    p localp = new p(this, null);
    BufferedReader localBufferedReader;
    int i;
    String str;
    try
    {
      localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/meminfo")));
      i = 0;
      while (true)
      {
        str = localBufferedReader.readLine();
        if (str == null)
          break label167;
        Matcher localMatcher1 = a.matcher(str);
        if (!localMatcher1.find())
          break;
        localp.b = Integer.parseInt(localMatcher1.group(1));
      }
    }
    catch (IOException localIOException)
    {
      com.avast.android.generic.util.m.c(getClass().getName(), "Unable to retrieve meminfo.", localIOException);
    }
    while (true)
    {
      return localp;
      Matcher localMatcher2 = b.matcher(str);
      if (localMatcher2.find())
      {
        i += Integer.parseInt(localMatcher2.group(1));
        break;
      }
      Matcher localMatcher3 = c.matcher(str);
      if (!localMatcher3.find())
        break;
      i += Integer.parseInt(localMatcher3.group(1));
      break;
      label167: localp.c = i;
      localp.a = ((float)(localp.b - localp.c) / (float)localp.b);
      localBufferedReader.close();
    }
  }

  public m d()
  {
    p localp = new p(this, null);
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l1 = localStatFs.getBlockSize();
      long l2 = l1 * localStatFs.getBlockCount();
      long l3 = l1 * localStatFs.getAvailableBlocks();
      localp.b = (l2 / 1024L);
      localp.c = (l3 / 1024L);
      localp.a = ((float)((localp.b - localp.c) / localp.b));
    }
    return localp;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.n
 * JD-Core Version:    0.6.2
 */