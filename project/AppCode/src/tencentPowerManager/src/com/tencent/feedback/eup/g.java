package com.tencent.feedback.eup;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileReader;
import java.text.DecimalFormat;

public final class g
{
  private final DecimalFormat a = new DecimalFormat("#0.0");
  private FileReader b = null;
  private BufferedReader c = null;
  private long d;
  private long e;
  private long f;
  private String g = "";

  public final String a()
  {
    try
    {
      this.b = new FileReader("/proc/stat");
      this.c = new BufferedReader(this.b, 500);
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        String str;
        do
        {
          str = this.c.readLine();
          if (str == null)
            break;
        }
        while (!str.startsWith("cpu"));
        String[] arrayOfString = str.trim().split("[ ]+");
        long l1 = Long.parseLong(arrayOfString[1]) + Long.parseLong(arrayOfString[2]);
        long l2 = Long.parseLong(arrayOfString[3]) + Long.parseLong(arrayOfString[6]) + Long.parseLong(arrayOfString[7]);
        long l3 = l1 + l2 + Long.parseLong(arrayOfString[4]) + Long.parseLong(arrayOfString[5]);
        if ((this.f != 0L) || (l3 >= this.f))
        {
          long l4 = l1 - this.d;
          long l5 = l2 - this.e;
          long l6 = l3 - this.f;
          this.g = this.a.format(100.0D * (l4 + l5) / l6);
          this.a.format(100.0D * l4 / l6);
          this.a.format(100.0D * l5 / l6);
        }
        this.d = l1;
        this.e = l2;
        this.f = l3;
        this.b.close();
        this.c.close();
        while (true)
        {
          return this.g;
          localThrowable1 = localThrowable1;
          Log.e("RP", "Could not read /proc/stat");
        }
      }
      catch (Throwable localThrowable2)
      {
        while (true)
          Log.e("RP", localThrowable2.getMessage());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.g
 * JD-Core Version:    0.6.2
 */