package com.avast.android.mobilesecurity.app.manager.a;

import com.avast.android.generic.util.m;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class q extends a
{
  private static final Pattern a = Pattern.compile("cpu\\s+((\\d+ )+)");
  private long b = 0L;
  private long c = 0L;

  protected float b()
  {
    float f1 = -1.0F;
    try
    {
      localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")));
      Matcher localMatcher;
      do
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        localMatcher = a.matcher(str);
      }
      while (!localMatcher.find());
      String[] arrayOfString = localMatcher.group(1).split(" ");
      long l1 = Integer.valueOf(arrayOfString[3]).intValue();
      long l2 = 0L;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        l2 += Integer.valueOf(arrayOfString[j]).intValue();
      long l3 = l1 - this.c;
      long l4 = l2 - this.b;
      f1 = (float)((l4 - l3) / l4);
      this.c = l1;
      this.b = l2;
      f2 = f1;
    }
    catch (IOException localIOException1)
    {
      while (true)
      {
        try
        {
          BufferedReader localBufferedReader;
          localBufferedReader.close();
          return f2;
          localIOException1 = localIOException1;
          f2 = f1;
          IOException localIOException2 = localIOException1;
          m.c(getClass().getName(), "Unable to retrieve '/proc/stat' info.", localIOException2);
          continue;
        }
        catch (IOException localIOException3)
        {
          continue;
        }
        float f2 = f1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.q
 * JD-Core Version:    0.6.2
 */